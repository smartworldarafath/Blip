.class public final Landroidx/compose/runtime/OffsetApplier;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Applier<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/runtime/Applier;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/OffsetApplier;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    add-int/2addr p1, v0

    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Applier;->b(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Applier;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(III)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    add-int/2addr p1, v0

    .line 10
    add-int/2addr p2, v0

    .line 11
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/runtime/Applier;->e(III)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    add-int/2addr p1, v0

    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Applier;->f(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 18
    .line 19
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->g()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final h(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Applier;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/OffsetApplier;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    add-int/2addr p1, v0

    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/OffsetApplier;->a:Landroidx/compose/runtime/Applier;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Applier;->i(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
