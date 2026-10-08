.class final Landroidx/compose/foundation/layout/InsetsListener;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

.field public m:Z

.field public n:Z

.field public o:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->n:Z

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->b()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long p1, v1, v3

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 21
    .line 22
    iget-object v1, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/ValueInsets;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 55
    .line 56
    return-void
.end method

.method public final b(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->n:Z

    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsListener;->l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    return-object p1
.end method

.method public final d(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 3
    .line 4
    return-object p2
.end method

.method public final i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    iput-object p2, p0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/ValueInsets;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x1e

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/InsetsListener;->n:Z

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    .line 39
    .line 40
    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Z

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->n:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsListener;->l:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 15
    .line 16
    iget-object v2, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 36
    .line 37
    :cond_0
    return-void
.end method
