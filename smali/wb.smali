.class public final synthetic Lwb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/collection/MutableObjectFloatMap;

.field public final synthetic k:Landroidx/navigation/compose/ComposeNavigator;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/MutableObjectFloatMap;Landroidx/navigation/compose/ComposeNavigator;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb;->j:Landroidx/collection/MutableObjectFloatMap;

    .line 5
    .line 6
    iput-object p2, p0, Lwb;->k:Landroidx/navigation/compose/ComposeNavigator;

    .line 7
    .line 8
    iput-boolean p3, p0, Lwb;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lwb;->m:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lwb;->n:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lwb;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lwb;->p:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 2
    .line 3
    iget-object v0, p0, Lwb;->p:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lwb;->j:Landroidx/collection/MutableObjectFloatMap;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/collection/ObjectFloatMap;->a(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    iget-object v0, v1, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 38
    .line 39
    aget v0, v0, v2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v0, v2}, Landroidx/collection/MutableObjectFloatMap;->d(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    move v0, v2

    .line 47
    :goto_0
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget-object v2, p0, Lwb;->k:Landroidx/navigation/compose/ComposeNavigator;

    .line 71
    .line 72
    iget-object v2, v2, Landroidx/navigation/compose/ComposeNavigator;->c:Landroidx/compose/runtime/MutableState;

    .line 73
    .line 74
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    iget-boolean v2, p0, Lwb;->l:Z

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-float/2addr v0, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    sub-float/2addr v0, v3

    .line 98
    :goto_2
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 103
    .line 104
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v2, v0}, Landroidx/collection/MutableObjectFloatMap;->d(Ljava/lang/String;F)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Landroidx/compose/animation/ContentTransform;

    .line 110
    .line 111
    iget-object v2, p0, Lwb;->m:Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Landroidx/compose/animation/EnterTransition;

    .line 118
    .line 119
    iget-object v3, p0, Lwb;->n:Lkotlin/jvm/functions/Function1;

    .line 120
    .line 121
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Landroidx/compose/animation/ExitTransition;

    .line 126
    .line 127
    iget-object p0, p0, Lwb;->o:Lkotlin/jvm/functions/Function1;

    .line 128
    .line 129
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Landroidx/compose/animation/SizeTransform;

    .line 134
    .line 135
    invoke-direct {v1, v2, v3, v0, p0}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V

    .line 136
    .line 137
    .line 138
    return-object v1

    .line 139
    :cond_4
    sget-object p0, Landroidx/compose/animation/EnterTransition;->a:Landroidx/compose/animation/EnterTransition;

    .line 140
    .line 141
    sget-object p1, Landroidx/compose/animation/ExitTransition;->a:Landroidx/compose/animation/ExitTransition;

    .line 142
    .line 143
    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->d(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method
