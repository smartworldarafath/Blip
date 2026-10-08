.class public final Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/LoadEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/datasource/DataSpec;

.field public final c:J

.field public d:Landroid/net/Uri;

.field public e:Ljava/util/Map;

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(JLandroidx/media3/datasource/DataSpec;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->b:Landroidx/media3/datasource/DataSpec;

    .line 7
    .line 8
    iget-object p1, p3, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->d:Landroid/net/Uri;

    .line 11
    .line 12
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->c:J

    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->d()Lcom/google/common/collect/ImmutableMap;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->e:Ljava/util/Map;

    .line 19
    .line 20
    return-void
.end method
