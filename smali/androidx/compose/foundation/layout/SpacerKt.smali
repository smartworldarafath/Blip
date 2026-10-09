.class public abstract Landroidx/compose/foundation/layout/SpacerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    iget-wide v1, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {p0, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-object v2, p0

    .line 24
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 27
    .line 28
    .line 29
    iget-boolean v3, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    sget-object v3, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 43
    .line 44
    sget-object v4, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->a:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 45
    .line 46
    invoke-static {p0, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 50
    .line 51
    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 58
    .line 59
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
