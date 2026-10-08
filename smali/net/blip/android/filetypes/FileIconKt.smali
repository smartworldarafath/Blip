.class public abstract Lnet/blip/android/filetypes/FileIconKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroid/net/Uri;Landroid/util/Size;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lnet/blip/libblip/FileType;->j:Lnet/blip/libblip/FileType$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0, p2}, Lnet/blip/android/filetypes/FileType_UriKt;->a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const v3, 0x7f0800e9

    .line 13
    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lk8;->e()V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :pswitch_0
    const v3, 0x7f0800ea

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const v3, 0x7f0800e2

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    const v3, 0x7f0800e0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    const v3, 0x7f0800e1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    const v3, 0x7f0800e7

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    const v3, 0x7f0800e8

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    const v3, 0x7f0800e6

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_7
    const v3, 0x7f0800e4

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    const v3, 0x7f0800ec

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_9
    const v3, 0x7f0800eb

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_a
    const v3, 0x7f0800e3

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_b
    const v3, 0x7f0800e5

    .line 67
    .line 68
    .line 69
    :goto_0
    :pswitch_c
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    if-eqz p3, :cond_0

    .line 77
    .line 78
    sget-object v1, Lnet/blip/libblip/FileType;->m:Lnet/blip/libblip/FileType;

    .line 79
    .line 80
    sget-object v3, Lnet/blip/libblip/FileType;->o:Lnet/blip/libblip/FileType;

    .line 81
    .line 82
    sget-object v4, Lnet/blip/libblip/FileType;->l:Lnet/blip/libblip/FileType;

    .line 83
    .line 84
    filled-new-array {v1, v3, v4}, [Lnet/blip/libblip/FileType;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    new-instance v0, Lnet/blip/android/filetypes/FileIcon;

    .line 99
    .line 100
    sget-object v1, Lnet/blip/android/filetypes/Thumbnail$Pending;->a:Lnet/blip/android/filetypes/Thumbnail$Pending;

    .line 101
    .line 102
    invoke-direct {v0, v6, v1}, Lnet/blip/android/filetypes/FileIcon;-><init>(Landroid/graphics/drawable/Drawable;Lnet/blip/android/filetypes/Thumbnail;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    new-instance v4, Lnet/blip/android/filetypes/FileIconKt$Request$2;

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    move-object v7, p0

    .line 113
    move-object v8, p2

    .line 114
    move-object v9, p3

    .line 115
    invoke-direct/range {v4 .. v10}, Lnet/blip/android/filetypes/FileIconKt$Request$2;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x3

    .line 119
    invoke-static {p1, v2, v2, v4, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 120
    .line 121
    .line 122
    return-object v5

    .line 123
    :cond_0
    new-instance p0, Lnet/blip/android/filetypes/FileIcon;

    .line 124
    .line 125
    sget-object p1, Lnet/blip/android/filetypes/Thumbnail$None;->a:Lnet/blip/android/filetypes/Thumbnail$None;

    .line 126
    .line 127
    invoke-direct {p0, v6, p1}, Lnet/blip/android/filetypes/FileIcon;-><init>(Landroid/graphics/drawable/Drawable;Lnet/blip/android/filetypes/Thumbnail;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static final b(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->m:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    new-instance v2, Lcoil3/request/ImageRequest$Builder;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, v2, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p1, p2}, Lcoil3/size/SizeKt;->a(II)Lcoil3/size/Size;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Lcoil3/size/RealSizeResolver;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Lcoil3/size/RealSizeResolver;-><init>(Lcoil3/size/Size;)V

    .line 78
    .line 79
    .line 80
    iput-object p2, v2, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p0, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->m:Landroid/content/Context;

    .line 87
    .line 88
    iput v3, v0, Lnet/blip/android/filetypes/FileIconKt$mediaThumbnail$1;->o:I

    .line 89
    .line 90
    check-cast p3, Lcoil3/RealImageLoader;

    .line 91
    .line 92
    invoke-virtual {p3, p1, v0}, Lcoil3/RealImageLoader;->c(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-ne p3, v1, :cond_3

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_3
    :goto_1
    check-cast p3, Lcoil3/request/ImageResult;

    .line 100
    .line 101
    invoke-interface {p3}, Lcoil3/request/ImageResult;->e()Lcoil3/Image;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    new-instance p2, Lnet/blip/android/filetypes/Thumbnail$Some;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p0}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {p2, p0}, Lnet/blip/android/filetypes/Thumbnail$Some;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    return-object p2

    .line 124
    :cond_4
    sget-object p0, Lnet/blip/android/filetypes/Thumbnail$None;->a:Lnet/blip/android/filetypes/Thumbnail$None;

    .line 125
    .line 126
    return-object p0
.end method
