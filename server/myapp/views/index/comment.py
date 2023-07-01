# Create your views here.
from rest_framework.decorators import api_view, authentication_classes, throttle_classes

from myapp.auth.MyRateThrottle import MyRateThrottle
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Comment
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import CommentSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        thingId = request.GET.get("thingId", None)
        order = request.GET.get("order", 'recent')

        if thingId:
            if order == 'recent':
                orderBy = '-comment_time'
            else:
                orderBy = '-like_count'

            comments = Comment.objects.select_related("thing").filter(thing=thingId).order_by(orderBy)
            # print(comments)
            serializer = CommentSerializer(comments, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)
        else:
            return APIResponse(code=1, msg='thingId不能为空')


@api_view(['GET'])
def list_my_comment(request):
    if request.method == 'GET':
        userId = request.GET.get("userId", None)
        order = request.GET.get("order", 'recent')

        if userId:
            if order == 'recent':
                orderBy = '-comment_time'
            else:
                orderBy = '-like_count'

            comments = Comment.objects.select_related("thing").filter(user=userId).order_by(orderBy)
            # print(comments)
            serializer = CommentSerializer(comments, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)
        else:
            return APIResponse(code=1, msg='userId不能为空')


@api_view(['POST'])
@throttle_classes([MyRateThrottle])
def create(request):
    serializer = CommentSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='创建失败')


@api_view(['POST'])
def delete(request):
    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Comment.objects.filter(id__in=ids_arr).delete()
    except Comment.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='删除成功')


@api_view(['POST'])
def like(request):
    try:
        commentId = request.GET.get('commentId')
        comment = Comment.objects.get(pk=commentId)
        comment.like_count += 1
        comment.save()
    except Comment.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='推荐成功')
