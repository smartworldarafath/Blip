.class public abstract Lcoil3/util/UtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;
    .locals 3

    .line 1
    new-instance v0, Lcoil3/request/ErrorResult;

    .line 2
    .line 3
    instance-of v1, p1, Lcoil3/request/NullRequestDataException;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/request/ImageRequest;->n:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 10
    .line 11
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcoil3/Image;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v2, Lcoil3/request/ImageRequest$Defaults;->j:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcoil3/Image;

    .line 26
    .line 27
    :cond_0
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcoil3/request/ImageRequest;->m:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcoil3/Image;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v2, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcoil3/Image;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcoil3/request/ImageRequest;->m:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcoil3/Image;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 59
    .line 60
    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcoil3/Image;

    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-direct {v0, v1, p0, p1}, Lcoil3/request/ErrorResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public static final b()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;->j:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    .line 2
    .line 3
    return-object v0
.end method
