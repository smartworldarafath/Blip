.class public final Landroidx/media3/common/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/Supplier;

.field public final b:Landroid/os/Handler;

.field public c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

.field public d:Landroidx/media3/common/AudioAttributes;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroidx/media3/common/audio/AudioFocusRequestCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    .line 7
    .line 8
    new-instance v0, Le3;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Le3;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->b:Landroid/os/Handler;

    .line 28
    .line 29
    iput v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Landroid/media/AudioFocusRequest;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->d()V

    .line 31
    .line 32
    .line 33
    :cond_3
    :goto_1
    return-void
.end method

.method public final c(IZ)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_8

    .line 4
    .line 5
    iget p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->f:I

    .line 6
    .line 7
    if-ne p1, v1, :cond_8

    .line 8
    .line 9
    iget v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz p2, :cond_5

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    if-ne v2, p2, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v2, Landroidx/media3/common/AudioAttributes;->b:Landroidx/media3/common/AudioAttributes;

    .line 31
    .line 32
    iput-object v2, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 33
    .line 34
    iput p1, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iget v2, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    .line 43
    .line 44
    iput v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    .line 47
    .line 48
    iput-object v0, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 49
    .line 50
    move-object v0, p1

    .line 51
    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iput-object p1, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 57
    .line 58
    iput-boolean v1, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->c:Z

    .line 59
    .line 60
    new-instance v6, Ld3;

    .line 61
    .line 62
    invoke-direct {v6, p0}, Ld3;-><init>(Landroidx/media3/common/audio/AudioFocusManager;)V

    .line 63
    .line 64
    .line 65
    iget-object v7, p0, Landroidx/media3/common/audio/AudioFocusManager;->b:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v4, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 71
    .line 72
    iget v5, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    .line 73
    .line 74
    iget-object v8, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 75
    .line 76
    iget-boolean v9, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->c:Z

    .line 77
    .line 78
    invoke-direct/range {v4 .. v9}, Landroidx/media3/common/audio/AudioFocusRequestCompat;-><init>(ILd3;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;Z)V

    .line 79
    .line 80
    .line 81
    iput-object v4, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 82
    .line 83
    :goto_1
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/media/AudioManager;

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Landroid/media/AudioFocusRequest;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eq p1, v1, :cond_4

    .line 103
    .line 104
    if-ne p1, p2, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :cond_5
    if-eq v2, v1, :cond_7

    .line 116
    .line 117
    const/4 p0, 0x3

    .line 118
    if-eq v2, p0, :cond_6

    .line 119
    .line 120
    :goto_3
    return v1

    .line 121
    :cond_6
    return v0

    .line 122
    :cond_7
    return v3

    .line 123
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 127
    .line 128
    .line 129
    return v1
.end method
