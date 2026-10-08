.class final Landroidx/compose/foundation/text/selection/SingleSelectionLayout;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionLayout;


# instance fields
.field public final a:Z

.field public final b:Landroidx/compose/foundation/text/selection/Selection;

.field public final c:Landroidx/compose/foundation/text/selection/SelectableInfo;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->b:Landroidx/compose/foundation/text/selection/Selection;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/text/selection/CrossStatus;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->a:I

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->b:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->k:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    if-le v0, p0, :cond_1

    .line 13
    .line 14
    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->l:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 18
    .line 19
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "SingleSelectionLayout(isStartHandle="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a:Z

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", crossed="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", info=\n\t"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, ")"

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
