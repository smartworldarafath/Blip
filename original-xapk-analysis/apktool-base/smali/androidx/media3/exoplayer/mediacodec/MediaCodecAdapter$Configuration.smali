.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Landroidx/media3/common/Format;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;

.field public final f:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->b:Landroid/media/MediaFormat;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->c:Landroidx/media3/common/Format;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->d:Landroid/view/Surface;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->e:Landroid/media/MediaCrypto;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->f:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 15
    .line 16
    return-void
.end method
