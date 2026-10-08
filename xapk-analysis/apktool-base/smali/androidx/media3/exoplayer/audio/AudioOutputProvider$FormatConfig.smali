.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Landroidx/media3/common/AudioAttributes;

.field public final c:Landroid/media/AudioDeviceInfo;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->c:Landroid/media/AudioDeviceInfo;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->c:Landroid/media/AudioDeviceInfo;

    .line 15
    .line 16
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->d:Z

    .line 19
    .line 20
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->e:I

    .line 21
    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->e:I

    .line 23
    .line 24
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->f:I

    .line 25
    .line 26
    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->f:I

    .line 27
    .line 28
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->g:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->g:Z

    .line 31
    .line 32
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->h:I

    .line 33
    .line 34
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->h:I

    .line 35
    .line 36
    return-void
.end method
