.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatSupport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->c:Z

    .line 15
    .line 16
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->d:I

    .line 17
    .line 18
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->d:I

    .line 19
    .line 20
    return-void
.end method
