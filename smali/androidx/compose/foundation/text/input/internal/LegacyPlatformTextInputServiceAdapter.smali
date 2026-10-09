.class public abstract Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;
    }
.end annotation


# instance fields
.field public a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->q:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->q:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final i(Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Expected textInputModifierNode to be "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " but was "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    .line 33
    .line 34
    return-void
.end method
