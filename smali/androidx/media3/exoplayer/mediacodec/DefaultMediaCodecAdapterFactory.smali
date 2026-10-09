.class public final Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "com.amazon.hardware.tv_screen"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :goto_0
    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->c:Landroidx/media3/common/Format;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Landroidx/media3/common/util/Util;->w(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "DMCodecAdapterFactory"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    .line 48
    .line 49
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/c;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(II)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/c;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Landroidx/media3/exoplayer/mediacodec/c;Landroidx/media3/exoplayer/mediacodec/c;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->c:Z

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->b(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
