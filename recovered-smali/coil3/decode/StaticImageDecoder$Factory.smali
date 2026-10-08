.class public final Lcoil3/decode/StaticImageDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/decode/StaticImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Semaphore;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Semaphore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 6

    .line 1
    invoke-static {p2}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p2, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    if-ne v0, v2, :cond_6

    .line 15
    .line 16
    :cond_0
    iget-object v0, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    .line 17
    .line 18
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v4, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 23
    .line 24
    if-ne v2, v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->I0()Lokio/Path;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lokio/Path;->toFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->e()Lcoil3/decode/ImageSource$Metadata;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v2, v0, Lcoil3/decode/AssetMetadata;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v0, Lcoil3/decode/AssetMetadata;

    .line 54
    .line 55
    iget-object v0, v0, Lcoil3/decode/AssetMetadata;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of v2, v0, Lcoil3/decode/ContentMetadata;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v4, 0x1d

    .line 69
    .line 70
    if-lt v2, v4, :cond_3

    .line 71
    .line 72
    :try_start_0
    check-cast v0, Lcoil3/decode/ContentMetadata;

    .line 73
    .line 74
    iget-object v0, v0, Lcoil3/decode/ContentMetadata;->b:Landroid/content/res/AssetFileDescriptor;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 85
    .line 86
    invoke-static {v1, v4, v5, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 87
    .line 88
    .line 89
    new-instance v1, Lvi;

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-direct {v1, v2, v0}, Lvi;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lbb;->e(Lvi;)Landroid/graphics/ImageDecoder$Source;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    instance-of v2, v0, Lcoil3/decode/ResourceMetadata;

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    check-cast v2, Lcoil3/decode/ResourceMetadata;

    .line 106
    .line 107
    iget-object v4, v2, Lcoil3/decode/ResourceMetadata;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v1, v2, Lcoil3/decode/ResourceMetadata;->b:I

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    instance-of v1, v0, Lcoil3/decode/ByteBufferMetadata;

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    check-cast v0, Lcoil3/decode/ByteBufferMetadata;

    .line 135
    .line 136
    iget-object v0, v0, Lcoil3/decode/ByteBufferMetadata;->a:Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    :cond_5
    move-object v0, v3

    .line 144
    :goto_0
    if-nez v0, :cond_7

    .line 145
    .line 146
    :cond_6
    return-object v3

    .line 147
    :cond_7
    new-instance v1, Lcoil3/decode/StaticImageDecoder;

    .line 148
    .line 149
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    .line 150
    .line 151
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    .line 152
    .line 153
    invoke-direct {v1, v0, p1, p2, p0}, Lcoil3/decode/StaticImageDecoder;-><init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method
