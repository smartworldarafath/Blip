.class final Landroidx/window/layout/util/BoundsHelperApi29Impl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/window/layout/util/BoundsHelper;


# static fields
.field public static final a:Landroidx/window/layout/util/BoundsHelperApi29Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi29Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi29Impl;->a:Landroidx/window/layout/util/BoundsHelperApi29Impl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    .line 10
    .line 11
    const-string v1, "windowConfiguration"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "getBounds"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast p0, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    instance-of v0, p0, Ljava/lang/NoSuchFieldException;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    throw p0

    .line 70
    :cond_1
    :goto_0
    const-string v0, "BoundsHelper"

    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi28Impl;->a:Landroidx/window/layout/util/BoundsHelperApi28Impl;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/window/layout/util/BoundsHelperApi28Impl;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
