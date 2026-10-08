.class public final Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;
    }
.end annotation


# static fields
.field public static final d:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/common/Timeline;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a()Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->d:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a:J

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->a:J

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->b:Landroidx/media3/common/Timeline;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->c:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method
