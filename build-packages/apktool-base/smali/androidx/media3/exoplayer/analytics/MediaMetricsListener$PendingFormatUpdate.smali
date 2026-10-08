.class final Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingFormatUpdate"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
