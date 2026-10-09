.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->d:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->c:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
