.class public abstract Landroidx/compose/runtime/Updater;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/GapComposer;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)V
    .locals 3

    .line 1
    new-instance v0, Lcf;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/GapComposer;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/GapComposer;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
