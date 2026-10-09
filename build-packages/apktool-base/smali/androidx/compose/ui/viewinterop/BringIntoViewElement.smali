.class final Landroidx/compose/ui/viewinterop/BringIntoViewElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/viewinterop/BringIntoViewNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lm2;


# direct methods
.method public constructor <init>(Lm2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/ui/viewinterop/BringIntoViewNode;-><init>(Lm2;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewElement;->b:Lm2;

    .line 4
    .line 5
    iput-object p0, p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->x:Lm2;

    .line 6
    .line 7
    iget-boolean v0, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->y:Landroidx/compose/ui/viewinterop/a;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
