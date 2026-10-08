.class public final Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:J

.field public b:Landroidx/media3/common/Timeline;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a:J

    .line 7
    .line 8
    sget-object v0, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->c:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
