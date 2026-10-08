.class public final synthetic Lg1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/animation/core/MutableTransitionState;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:Landroidx/compose/foundation/ScrollState;

.field public final synthetic n:Landroidx/compose/ui/Modifier;

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg1;->k:Landroidx/compose/animation/core/MutableTransitionState;

    .line 8
    .line 9
    iput-object p2, p0, Lg1;->l:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    iput-object p3, p0, Lg1;->m:Landroidx/compose/foundation/ScrollState;

    .line 12
    .line 13
    iput-object p4, p0, Lg1;->n:Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    iput-object p5, p0, Lg1;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 18
    const/4 p6, 0x1

    iput p6, p0, Lg1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1;->k:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p2, p0, Lg1;->l:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lg1;->m:Landroidx/compose/foundation/ScrollState;

    iput-object p4, p0, Lg1;->n:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lg1;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lg1;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v7, p1

    .line 9
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x31

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    iget-object v2, p0, Lg1;->k:Landroidx/compose/animation/core/MutableTransitionState;

    .line 23
    .line 24
    iget-object v3, p0, Lg1;->l:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    iget-object v4, p0, Lg1;->m:Landroidx/compose/foundation/ScrollState;

    .line 27
    .line 28
    iget-object v5, p0, Lg1;->n:Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    iget-object v6, p0, Lg1;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 31
    .line 32
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/MenuKt;->a(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sget-object v0, Landroidx/compose/material/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 45
    .line 46
    and-int/lit8 v0, p2, 0x3

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eq v0, v2, :cond_0

    .line 51
    .line 52
    move v0, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    and-int/2addr p2, v3

    .line 56
    move-object v7, p1

    .line 57
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 58
    .line 59
    invoke-virtual {v7, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const/16 v8, 0x30

    .line 66
    .line 67
    iget-object v2, p0, Lg1;->k:Landroidx/compose/animation/core/MutableTransitionState;

    .line 68
    .line 69
    iget-object v3, p0, Lg1;->l:Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    iget-object v4, p0, Lg1;->m:Landroidx/compose/foundation/ScrollState;

    .line 72
    .line 73
    iget-object v5, p0, Lg1;->n:Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    iget-object v6, p0, Lg1;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/MenuKt;->a(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-object v1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
