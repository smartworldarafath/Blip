.class public final Landroidx/core/view/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x24

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v1, 0x23

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v1, 0x22

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/16 v1, 0x1f

    .line 43
    .line 44
    if-lt v0, v1, :cond_3

    .line 45
    .line 46
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const/16 v1, 0x1e

    .line 55
    .line 56
    if-lt v0, v1, :cond_4

    .line 57
    .line 58
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    const/16 v1, 0x1d

    .line 67
    .line 68
    if-lt v0, v1, :cond_5

    .line 69
    .line 70
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    .line 71
    .line 72
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    .line 79
    .line 80
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 88
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    :cond_0
    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    :cond_1
    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    .line 90
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    :cond_2
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    .line 91
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    :cond_3
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 92
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    :cond_4
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 93
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 94
    :cond_5
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->b()Landroidx/core/view/WindowInsetsCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(Landroidx/core/graphics/Insets;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->h(Landroidx/core/graphics/Insets;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
