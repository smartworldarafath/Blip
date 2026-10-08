.class public final Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
.super Ljava/lang/Exception;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Z


# direct methods
.method public constructor <init>(IIIILandroidx/media3/common/Format;ZLandroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;)V
    .locals 2

    .line 1
    const-string v0, "AudioTrack init failed 0 Config("

    .line 2
    .line 3
    const-string v1, ", "

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2, v1}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, ") "

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    if-eqz p6, :cond_0

    .line 27
    .line 28
    const-string p2, " (recoverable)"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p2, ""

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    iput-boolean p6, p0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->j:Z

    .line 44
    .line 45
    return-void
.end method
