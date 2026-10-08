.class public final Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/window/layout/util/WindowMetricsCompatHelper;


# static fields
.field public static final a:Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;->a:Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object p0, p1

    .line 5
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    instance-of v0, p0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, p0

    .line 20
    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move-object p0, p1

    .line 38
    :goto_1
    instance-of v0, p0, Landroid/app/Activity;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    check-cast p0, Landroid/app/Activity;

    .line 43
    .line 44
    new-instance p1, Landroidx/window/layout/WindowMetrics;

    .line 45
    .line 46
    new-instance v0, Landroidx/window/core/Bounds;

    .line 47
    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v2, 0x1e

    .line 51
    .line 52
    if-lt v1, v2, :cond_4

    .line 53
    .line 54
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi30Impl;->a:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v2, 0x1d

    .line 58
    .line 59
    if-lt v1, v2, :cond_5

    .line 60
    .line 61
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi29Impl;->a:Landroidx/window/layout/util/BoundsHelperApi29Impl;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi28Impl;->a:Landroidx/window/layout/util/BoundsHelperApi28Impl;

    .line 65
    .line 66
    :goto_2
    invoke-interface {v1, p0}, Landroidx/window/layout/util/BoundsHelper;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p0}, Landroidx/window/layout/util/DensityCompatHelper;->a(Landroid/content/Context;)F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-direct {p1, v0, p0}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;F)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_6
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    instance-of p0, p0, Landroid/app/Application;

    .line 86
    .line 87
    if-eqz p0, :cond_7

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_7
    const-string p0, "Must provide a UiContext or Application Context"

    .line 91
    .line 92
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0

    .line 97
    :cond_8
    :goto_3
    const-string p0, "window"

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast p0, Landroid/view/WindowManager;

    .line 107
    .line 108
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance v0, Landroid/graphics/Point;

    .line 116
    .line 117
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Landroid/graphics/Rect;

    .line 124
    .line 125
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 126
    .line 127
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 134
    .line 135
    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->a(Landroid/content/Context;)F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-direct {v0, p0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;F)V

    .line 140
    .line 141
    .line 142
    return-object v0
.end method
