.class public final synthetic Lic;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lic;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Lic;->k:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Lic;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lic;->m:Landroidx/compose/ui/focus/FocusRequester;

    .line 11
    .line 12
    iput-object p5, p0, Lic;->n:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p6, p0, Lic;->o:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lic;->p:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lic;->q:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    and-int/2addr v2, v5

    .line 25
    move-object v9, v1

    .line 26
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v9, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-boolean v1, v0, Lic;->j:Z

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v10, Lnet/blip/android/ui/onboarding/a;

    .line 41
    .line 42
    iget-object v11, v0, Lic;->k:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    iget-object v12, v0, Lic;->l:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iget-object v13, v0, Lic;->m:Landroidx/compose/ui/focus/FocusRequester;

    .line 47
    .line 48
    iget-object v14, v0, Lic;->n:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v15, v0, Lic;->o:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, v0, Lic;->p:Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    iget-object v0, v0, Lic;->q:Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    move-object/from16 v17, v0

    .line 57
    .line 58
    move-object/from16 v16, v1

    .line 59
    .line 60
    invoke-direct/range {v10 .. v17}, Lnet/blip/android/ui/onboarding/a;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    .line 61
    .line 62
    .line 63
    const v0, -0x789f6b26

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/16 v10, 0x6c00

    .line 71
    .line 72
    const/4 v11, 0x6

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const-string v7, ""

    .line 76
    .line 77
    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 82
    .line 83
    .line 84
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object v0
.end method
