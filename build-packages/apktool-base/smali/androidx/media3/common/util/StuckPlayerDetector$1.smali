.class Landroidx/media3/common/util/StuckPlayerDetector$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic j:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$1;->j:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector$1;->j:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
