.class public abstract Lio/sentry/android/replay/util/ViewsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    sget-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AndroidComposeView"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :try_start_0
    instance-of v0, p0, Landroidx/compose/ui/node/Owner;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    move-object v0, p0

    .line 37
    check-cast v0, Landroidx/compose/ui/node/Owner;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const/4 v1, 0x1

    .line 53
    invoke-static {v0, p1, v1, p2, p3}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->b(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 58
    .line 59
    const-string v3, "Error traversing Compose tree. Most likely you\'re using an unsupported version of\nandroidx.compose.ui:ui. The minimum supported version is 1.5.0. If it\'s a newer\nversion, please open a github issue with the version you\'re using, so we can add\nsupport for it."

    .line 60
    .line 61
    new-array v4, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-interface {p3, v1, v0, v3, v4}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_2
    check-cast p0, Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    :goto_3
    return-void

    .line 75
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_4
    if-ge v2, v1, :cond_8

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    invoke-static {v3, p1, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    if-eqz p4, :cond_6

    .line 107
    .line 108
    instance-of v5, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    .line 109
    .line 110
    if-eqz v5, :cond_6

    .line 111
    .line 112
    iget-boolean v5, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->e:Z

    .line 113
    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-static {v3, v4, p2, p3, p4}, Lio/sentry/android/replay/util/ViewsKt;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    iput-object v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->g:Ljava/util/ArrayList;

    .line 126
    .line 127
    return-void
.end method
