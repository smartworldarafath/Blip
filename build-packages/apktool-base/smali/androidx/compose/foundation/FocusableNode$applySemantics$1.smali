.class final synthetic Landroidx/compose/foundation/FocusableNode$applySemantics$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->c0(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
