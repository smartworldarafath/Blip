.class public final synthetic Lnet/blip/android/ui/home/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/f;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/blip/android/ui/home/f;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/f;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/home/f;->m:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    and-int/2addr p3, v1

    .line 25
    move-object v8, p2

    .line 26
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v8, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 41
    .line 42
    if-ne p1, p3, :cond_1

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/ui/focus/FocusRequester;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    move-object v5, p1

    .line 53
    check-cast v5, Landroidx/compose/ui/focus/FocusRequester;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, p3, :cond_2

    .line 60
    .line 61
    new-instance p1, Lnet/blip/android/ui/home/HomeTopBarKt$HomeTopBar$1$6$1$1;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {p1, v5, v0}, Lnet/blip/android/ui/home/HomeTopBarKt$HomeTopBar$1$6$1$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 71
    .line 72
    invoke-static {v8, p2, p1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, p3, :cond_3

    .line 80
    .line 81
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 91
    .line 92
    iget-object v0, p0, Lnet/blip/android/ui/home/f;->m:Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    if-ne v2, p3, :cond_5

    .line 105
    .line 106
    :cond_4
    new-instance v2, Lb;

    .line 107
    .line 108
    const/16 p3, 0x12

    .line 109
    .line 110
    invoke-direct {v2, p3, v0, p1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    move-object v7, v2

    .line 117
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 118
    .line 119
    const v9, 0x30180

    .line 120
    .line 121
    .line 122
    const/16 v10, 0x9

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lnet/blip/android/ui/home/f;->j:Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "Search for someone to send to"

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    iget-boolean v4, p0, Lnet/blip/android/ui/home/f;->k:Z

    .line 131
    .line 132
    iget-object v6, p0, Lnet/blip/android/ui/home/f;->l:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    invoke-static/range {v0 .. v10}, Lnet/blip/android/ui/components/SearchFieldKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 135
    .line 136
    .line 137
    return-object p2

    .line 138
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 139
    .line 140
    .line 141
    return-object p2
.end method
