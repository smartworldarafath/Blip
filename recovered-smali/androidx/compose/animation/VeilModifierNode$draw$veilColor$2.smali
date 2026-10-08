.class final Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/EnterExitState;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/VeilModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/VeilModifierNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->k:Landroidx/compose/animation/VeilModifierNode;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;->k:Landroidx/compose/animation/VeilModifierNode;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->A:Landroidx/compose/animation/SharedMutableTransformState;

    .line 24
    .line 25
    iget-wide p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->e:J

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 34
    .line 35
    check-cast p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 44
    .line 45
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 49
    .line 50
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 53
    .line 54
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 55
    .line 56
    :goto_0
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method
