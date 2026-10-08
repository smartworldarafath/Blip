.class public final Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;
.super Landroidx/compose/ui/modifier/ModifierLocalMap;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroidx/compose/ui/modifier/ModifierLocalProvider;


# virtual methods
.method public final a(Landroidx/compose/ui/modifier/ModifierLocal;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocalProviderKt$modifierLocalProvider$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Landroidx/compose/animation/DeferredEnterExitTransitionKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    .line 10
    if-ne p1, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalProviderKt$modifierLocalProvider$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/compose/animation/DeferredEnterExitTransitionKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Check failed."

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 21
    .line 22
    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocalProviderKt$modifierLocalProvider$1;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalProviderKt$modifierLocalProvider$1;->b:Landroidx/compose/runtime/State;

    .line 25
    .line 26
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
