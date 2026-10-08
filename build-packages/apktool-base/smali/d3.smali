.class public final synthetic Ld3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/common/audio/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld3;->a:Landroidx/media3/common/audio/AudioFocusManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Ld3;->a:Landroidx/media3/common/audio/AudioFocusManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x3

    .line 7
    const/4 v1, -0x2

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    if-eq p1, v1, :cond_4

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const-string p0, "AudioFocusManager"

    .line 19
    .line 20
    const-string v0, "Unknown focus change type: "

    .line 21
    .line 22
    invoke-static {v0, p1, p0}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 p1, 0x2

    .line 27
    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->b(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->b(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    if-eq p1, v1, :cond_5

    .line 53
    .line 54
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-interface {p1, v0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->b(I)V

    .line 65
    .line 66
    .line 67
    :cond_6
    const/4 p1, 0x3

    .line 68
    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
