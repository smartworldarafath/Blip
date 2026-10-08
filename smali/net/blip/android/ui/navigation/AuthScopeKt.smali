.class public abstract Lnet/blip/android/ui/navigation/AuthScopeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, -0x3fbcfb0b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p2, 0x3

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    and-int/lit8 v4, p2, 0x1

    .line 23
    .line 24
    invoke-virtual {p1, v4, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    new-instance v0, Lv3;

    .line 49
    .line 50
    invoke-direct {v0, p0, p2, v1}, Lv3;-><init>(Lkotlin/jvm/functions/Function3;II)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v1, v0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-static {v0}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object v0, v0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 70
    .line 71
    iget-object v1, v1, Lnet/blip/libblip/frontend/Auth;->p:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v5, v0

    .line 78
    check-cast v5, Lnet/blip/libblip/Device;

    .line 79
    .line 80
    :goto_2
    if-nez v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    new-instance v0, Lv3;

    .line 89
    .line 90
    invoke-direct {v0, p0, p2, v2}, Lv3;-><init>(Lkotlin/jvm/functions/Function3;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    new-instance v0, Lnet/blip/android/ui/navigation/AuthScope;

    .line 95
    .line 96
    invoke-direct {v0, v4, v5}, Lnet/blip/android/ui/navigation/AuthScope;-><init>(Lnet/blip/libblip/User;Lnet/blip/libblip/Device;)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x30

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {p0, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    new-instance v0, Lv3;

    .line 119
    .line 120
    invoke-direct {v0, p0, p2, v3}, Lv3;-><init>(Lkotlin/jvm/functions/Function3;II)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    return-void
.end method
