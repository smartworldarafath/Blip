.class public final Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/CodecSpecificDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecProfileAndLevel"
.end annotation


# static fields
.field public static final d:Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1}, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;-><init>(IIZ)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->d:Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->c:Z

    .line 5
    .line 6
    iput p1, p0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->a:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/media3/common/util/CodecSpecificDataUtil$MediaCodecProfileAndLevel;->b:I

    .line 9
    .line 10
    return-void
.end method
