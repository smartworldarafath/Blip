.class public final synthetic Lmf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# virtual methods
.method public final a(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 20

    .line 1
    sget-object v0, Lcoil3/SingletonImageLoaderKt;->a:Lmf;

    .line 2
    .line 3
    new-instance v0, Lcoil3/ImageLoader$Builder;

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcoil3/SingletonImageLoaderKt;->b:Lcoil3/Extras$Key;

    .line 11
    .line 12
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v3, v0, Lcoil3/ImageLoader$Builder;->c:Lcoil3/Extras$Builder;

    .line 15
    .line 16
    invoke-virtual {v3, v1, v2}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcoil3/RealImageLoader$Options;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    .line 22
    .line 23
    .line 24
    move-result-object v19

    .line 25
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 26
    .line 27
    iget-object v6, v1, Lcoil3/request/ImageRequest$Defaults;->a:Lokio/FileSystem;

    .line 28
    .line 29
    iget-object v7, v1, Lcoil3/request/ImageRequest$Defaults;->b:Lkotlin/coroutines/CoroutineContext;

    .line 30
    .line 31
    iget-object v8, v1, Lcoil3/request/ImageRequest$Defaults;->c:Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    iget-object v9, v1, Lcoil3/request/ImageRequest$Defaults;->d:Lkotlin/coroutines/CoroutineContext;

    .line 34
    .line 35
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->e:Lcoil3/request/CachePolicy;

    .line 36
    .line 37
    iget-object v11, v1, Lcoil3/request/ImageRequest$Defaults;->f:Lcoil3/request/CachePolicy;

    .line 38
    .line 39
    iget-object v12, v1, Lcoil3/request/ImageRequest$Defaults;->g:Lcoil3/request/CachePolicy;

    .line 40
    .line 41
    iget-object v13, v1, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    iget-object v14, v1, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v15, v1, Lcoil3/request/ImageRequest$Defaults;->j:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->k:Lcoil3/size/SizeResolver;

    .line 48
    .line 49
    iget-object v3, v1, Lcoil3/request/ImageRequest$Defaults;->l:Lcoil3/size/Scale;

    .line 50
    .line 51
    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->m:Lcoil3/size/Precision;

    .line 52
    .line 53
    new-instance v5, Lcoil3/request/ImageRequest$Defaults;

    .line 54
    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    move-object/from16 v16, v2

    .line 58
    .line 59
    move-object/from16 v17, v3

    .line 60
    .line 61
    invoke-direct/range {v5 .. v19}, Lcoil3/request/ImageRequest$Defaults;-><init>(Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lj6;

    .line 65
    .line 66
    const/16 v2, 0x19

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lj6;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    new-instance v1, Lr1;

    .line 76
    .line 77
    const/16 v2, 0x14

    .line 78
    .line 79
    invoke-direct {v1, v2, v0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-instance v1, Lj6;

    .line 87
    .line 88
    const/16 v2, 0x1a

    .line 89
    .line 90
    invoke-direct {v1, v2}, Lj6;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    new-instance v10, Lcoil3/ComponentRegistry;

    .line 98
    .line 99
    sget-object v11, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 100
    .line 101
    move-object v12, v11

    .line 102
    move-object v13, v11

    .line 103
    move-object v14, v11

    .line 104
    move-object v15, v11

    .line 105
    invoke-direct/range {v10 .. v15}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 109
    .line 110
    move-object v6, v5

    .line 111
    move-object v5, v0

    .line 112
    invoke-direct/range {v4 .. v10}, Lcoil3/RealImageLoader$Options;-><init>(Landroid/content/Context;Lcoil3/request/ImageRequest$Defaults;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/ComponentRegistry;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcoil3/RealImageLoader;

    .line 116
    .line 117
    invoke-direct {v0, v4}, Lcoil3/RealImageLoader;-><init>(Lcoil3/RealImageLoader$Options;)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method
