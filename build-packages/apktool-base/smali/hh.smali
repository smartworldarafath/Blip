.class public final synthetic Lhh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhh;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lhh;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Lhh;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :pswitch_0
    new-instance p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    sget-object p0, Lcoil3/disk/UtilsKt;->a:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p0, Lcoil3/disk/DiskCache$Builder;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 28
    .line 29
    iput-object v0, p0, Lcoil3/disk/DiskCache$Builder;->a:Lokio/JvmSystemFileSystem;

    .line 30
    .line 31
    const-wide/32 v3, 0xa00000

    .line 32
    .line 33
    .line 34
    iput-wide v3, p0, Lcoil3/disk/DiskCache$Builder;->b:J

    .line 35
    .line 36
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 37
    .line 38
    iput-object v0, p0, Lcoil3/disk/DiskCache$Builder;->c:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 39
    .line 40
    sget-object v0, Lokio/FileSystem;->k:Lokio/Path;

    .line 41
    .line 42
    const-string v1, "coil3_disk_cache"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    :try_start_0
    invoke-virtual {v10}, Lokio/Path;->toFile()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Landroid/os/StatFs;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    mul-long/2addr v0, v5

    .line 73
    long-to-double v0, v0

    .line 74
    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    mul-double/2addr v5, v0

    .line 80
    double-to-long v1, v5

    .line 81
    const-wide/32 v5, 0xfa00000

    .line 82
    .line 83
    .line 84
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->e(JJJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    move-wide v6, v0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    iget-wide v0, p0, Lcoil3/disk/DiskCache$Builder;->b:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_1
    new-instance v5, Lcoil3/disk/RealDiskCache;

    .line 94
    .line 95
    iget-object v9, p0, Lcoil3/disk/DiskCache$Builder;->a:Lokio/JvmSystemFileSystem;

    .line 96
    .line 97
    iget-object v8, p0, Lcoil3/disk/DiskCache$Builder;->c:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 98
    .line 99
    invoke-direct/range {v5 .. v10}, Lcoil3/disk/RealDiskCache;-><init>(JLkotlin/coroutines/CoroutineContext;Lokio/FileSystem;Lokio/Path;)V

    .line 100
    .line 101
    .line 102
    return-object v5

    .line 103
    :pswitch_2
    sget p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->x:I

    .line 104
    .line 105
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 106
    .line 107
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 108
    .line 109
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_3
    sget p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->x:I

    .line 115
    .line 116
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 117
    .line 118
    sget-object v0, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 119
    .line 120
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_4
    sget p0, Lnet/blip/libblip/User$Companion$ADAPTER$1;->w:I

    .line 126
    .line 127
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 128
    .line 129
    sget-object v0, Lnet/blip/libblip/Device;->t:Lnet/blip/libblip/Device$Companion$ADAPTER$1;

    .line 130
    .line 131
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_5
    sget-object p0, Landroidx/compose/material/TypographyKt;->a:Landroidx/compose/ui/text/TextStyle;

    .line 137
    .line 138
    new-instance p0, Landroidx/compose/material/Typography;

    .line 139
    .line 140
    invoke-direct {p0}, Landroidx/compose/material/Typography;-><init>()V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_7
    sget-object p0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 148
    .line 149
    sget-object p0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->a:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 150
    .line 151
    return-object p0

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
