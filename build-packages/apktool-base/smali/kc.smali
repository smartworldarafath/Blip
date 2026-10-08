.class public final synthetic Lkc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkc;->j:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lkc;->k:Z

    .line 4
    .line 5
    iput-object p2, p0, Lkc;->l:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lkc;->m:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkc;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, Lkc;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iget-object v7, v0, Lkc;->l:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v8, p2

    .line 22
    .line 23
    check-cast v8, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    and-int/lit8 v9, v8, 0x3

    .line 30
    .line 31
    if-eq v9, v4, :cond_0

    .line 32
    .line 33
    move v3, v5

    .line 34
    :cond_0
    and-int/lit8 v4, v8, 0x1

    .line 35
    .line 36
    move-object v11, v1

    .line 37
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v11, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 56
    .line 57
    if-ne v3, v1, :cond_2

    .line 58
    .line 59
    :cond_1
    new-instance v3, Lk9;

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    invoke-direct {v3, v1, v6, v7}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    move-object v10, v3

    .line 69
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    const/4 v12, 0x6

    .line 72
    const/4 v13, 0x0

    .line 73
    const-string v8, "Continue"

    .line 74
    .line 75
    iget-boolean v9, v0, Lkc;->k:Z

    .line 76
    .line 77
    invoke-static/range {v8 .. v13}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object v2

    .line 85
    :pswitch_0
    move-object/from16 v1, p1

    .line 86
    .line 87
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 88
    .line 89
    move-object/from16 v8, p2

    .line 90
    .line 91
    check-cast v8, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    and-int/lit8 v9, v8, 0x3

    .line 98
    .line 99
    if-eq v9, v4, :cond_4

    .line 100
    .line 101
    move v3, v5

    .line 102
    :cond_4
    and-int/lit8 v4, v8, 0x1

    .line 103
    .line 104
    move-object v14, v1

    .line 105
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 106
    .line 107
    invoke-virtual {v14, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-boolean v0, v0, Lkc;->k:Z

    .line 114
    .line 115
    xor-int/lit8 v8, v0, 0x1

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    const/4 v1, 0x3

    .line 119
    invoke-static {v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-static {v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    new-instance v0, Li0;

    .line 128
    .line 129
    const/4 v1, 0x4

    .line 130
    invoke-direct {v0, v1, v7, v6}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const v1, 0x2fd8d57c

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    const v15, 0x30d80

    .line 141
    .line 142
    .line 143
    const/4 v9, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 150
    .line 151
    .line 152
    :goto_1
    return-object v2

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
