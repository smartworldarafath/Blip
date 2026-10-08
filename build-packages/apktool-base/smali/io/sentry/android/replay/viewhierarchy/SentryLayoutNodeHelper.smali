.class public abstract Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;


# direct methods
.method public static a()Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;
    .locals 5

    .line 1
    const-class v0, Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->b:Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    const-string v1, "getChildren$ui_release"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-object v1, v3

    .line 21
    :goto_0
    const-string v4, "getOuterCoordinator$ui_release"

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    move-object v3, v0

    .line 31
    :catch_1
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 32
    .line 33
    invoke-direct {v0, v1, v3}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->b:Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 37
    .line 38
    return-object v0
.end method

.method public static b(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;

    .line 4
    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a()Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->b:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    if-nez v1, :cond_2

    .line 53
    .line 54
    :try_start_0
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sput-object v2, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    return v0

    .line 63
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    sput-object v0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a()Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->b:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return p0
.end method
