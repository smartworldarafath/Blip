.class public final Landroidx/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->e:I

    .line 31
    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->n:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->n:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_3

    .line 31
    .line 32
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->w:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-gtz v2, :cond_2

    .line 39
    .line 40
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lio/sentry/d;->i()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 63
    .line 64
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 88
    .line 89
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->b:I

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-gt p0, p2, :cond_4

    .line 96
    .line 97
    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->m()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/AdapterHelper;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->e(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    const-string v2, "invalid position "

    .line 29
    .line 30
    const-string v3, ". State item count is "

    .line 31
    .line 32
    invoke-static {v2, p1, v3}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->b:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 37
    .line 38
    return-object p0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    move p1, p0

    .line 22
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ge p1, p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 37
    .line 38
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    move v1, p0

    .line 41
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v2}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->I0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_e

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_d

    .line 34
    .line 35
    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x10

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_b

    .line 57
    .line 58
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 59
    .line 60
    if-lez v6, :cond_9

    .line 61
    .line 62
    iget v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 63
    .line 64
    and-int/lit16 v6, v6, 0x20e

    .line 65
    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 76
    .line 77
    if-lt v7, v8, :cond_3

    .line 78
    .line 79
    if-lez v7, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g(I)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v7, v7, -0x1

    .line 85
    .line 86
    :cond_3
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->I0:Z

    .line 87
    .line 88
    if-eqz v8, :cond_8

    .line 89
    .line 90
    if-lez v7, :cond_8

    .line 91
    .line 92
    iget v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 93
    .line 94
    iget-object v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 95
    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    iget v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 99
    .line 100
    mul-int/lit8 v9, v9, 0x2

    .line 101
    .line 102
    move v10, v4

    .line 103
    :goto_1
    if-ge v10, v9, :cond_5

    .line 104
    .line 105
    iget-object v11, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 106
    .line 107
    aget v11, v11, v10

    .line 108
    .line 109
    if-ne v11, v8, :cond_4

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    add-int/lit8 v10, v10, 0x2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 116
    .line 117
    :goto_2
    if-ltz v7, :cond_7

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 124
    .line 125
    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 126
    .line 127
    iget-object v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 128
    .line 129
    if-eqz v9, :cond_7

    .line 130
    .line 131
    iget v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 132
    .line 133
    mul-int/lit8 v9, v9, 0x2

    .line 134
    .line 135
    move v10, v4

    .line 136
    :goto_3
    if-ge v10, v9, :cond_7

    .line 137
    .line 138
    iget-object v11, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 139
    .line 140
    aget v11, v11, v10

    .line 141
    .line 142
    if-ne v11, v8, :cond_6

    .line 143
    .line 144
    add-int/lit8 v7, v7, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    add-int/lit8 v10, v10, 0x2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    add-int/2addr v7, v5

    .line 151
    :cond_8
    :goto_4
    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    move v1, v5

    .line 155
    goto :goto_6

    .line 156
    :cond_9
    :goto_5
    move v1, v4

    .line 157
    :goto_6
    if-nez v1, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 160
    .line 161
    .line 162
    :goto_7
    move v4, v1

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    move v5, v4

    .line 165
    goto :goto_7

    .line 166
    :cond_b
    move v5, v4

    .line 167
    :goto_8
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 170
    .line 171
    .line 172
    if-nez v4, :cond_c

    .line 173
    .line 174
    if-nez v5, :cond_c

    .line 175
    .line 176
    if-eqz v2, :cond_c

    .line 177
    .line 178
    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    const/4 p0, 0x0

    .line 182
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 183
    .line 184
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    .line 186
    :cond_c
    return-void

    .line 187
    :cond_d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_f
    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    .line 233
    .line 234
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p1, " isAttached:"

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_10

    .line 254
    .line 255
    move v4, v5

    .line 256
    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-boolean v0, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;->g:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 82
    .line 83
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    :goto_1
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final k(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 8
    .line 9
    if-ltz v1, :cond_4b

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v1, v4, :cond_4b

    .line 16
    .line 17
    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v4, :cond_5

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    move v9, v8

    .line 37
    :goto_0
    if-ge v9, v4, :cond_2

    .line 38
    .line 39
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 46
    .line 47
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_1

    .line 52
    .line 53
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ne v11, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 67
    .line 68
    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 69
    .line 70
    if-eqz v9, :cond_4

    .line 71
    .line 72
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/AdapterHelper;

    .line 73
    .line 74
    invoke-virtual {v9, v1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->e(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-lez v9, :cond_4

    .line 79
    .line 80
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 81
    .line 82
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->a()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-ge v9, v10, :cond_4

    .line 87
    .line 88
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 89
    .line 90
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    move v11, v8

    .line 95
    :goto_1
    if-ge v11, v4, :cond_4

    .line 96
    .line 97
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 104
    .line 105
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-nez v13, :cond_3

    .line 110
    .line 111
    iget-wide v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 112
    .line 113
    cmp-long v13, v13, v9

    .line 114
    .line 115
    if-nez v13, :cond_3

    .line 116
    .line 117
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 118
    .line 119
    .line 120
    move-object v10, v12

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    :goto_2
    move-object v10, v6

    .line 126
    :goto_3
    if-eqz v10, :cond_6

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    move-object v10, v6

    .line 131
    :cond_6
    move v4, v8

    .line 132
    :goto_4
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 133
    .line 134
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 135
    .line 136
    if-nez v10, :cond_1c

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    move v12, v8

    .line 143
    :goto_5
    if-ge v12, v10, :cond_9

    .line 144
    .line 145
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 150
    .line 151
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_8

    .line 156
    .line 157
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-ne v14, v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-nez v14, :cond_8

    .line 168
    .line 169
    iget-boolean v14, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 170
    .line 171
    if-nez v14, :cond_7

    .line 172
    .line 173
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-nez v14, :cond_8

    .line 178
    .line 179
    :cond_7
    invoke-virtual {v13, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 180
    .line 181
    .line 182
    move-object v10, v13

    .line 183
    const/16 v16, 0x1

    .line 184
    .line 185
    goto/16 :goto_b

    .line 186
    .line 187
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/ChildHelper;

    .line 191
    .line 192
    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    move v13, v8

    .line 199
    :goto_6
    if-ge v13, v12, :cond_b

    .line 200
    .line 201
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Landroid/view/View;

    .line 206
    .line 207
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    const/16 v16, 0x1

    .line 212
    .line 213
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-ne v7, v1, :cond_a

    .line 218
    .line 219
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-nez v7, :cond_a

    .line 224
    .line 225
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-nez v7, :cond_a

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_b
    const/16 v16, 0x1

    .line 236
    .line 237
    move-object v14, v6

    .line 238
    :goto_7
    if-eqz v14, :cond_11

    .line 239
    .line 240
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/ChildHelper;

    .line 245
    .line 246
    iget-object v12, v10, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 247
    .line 248
    iget-object v13, v10, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 249
    .line 250
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    .line 252
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 253
    .line 254
    .line 255
    move-result v13

    .line 256
    if-ltz v13, :cond_10

    .line 257
    .line 258
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->d(I)Z

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    if-eqz v15, :cond_f

    .line 263
    .line 264
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->a(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10, v14}, Landroidx/recyclerview/widget/ChildHelper;->j(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/ChildHelper;

    .line 271
    .line 272
    iget-object v12, v10, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 273
    .line 274
    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 275
    .line 276
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    .line 278
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    const/4 v13, -0x1

    .line 283
    if-ne v10, v13, :cond_c

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_c
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->d(I)Z

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    if-eqz v15, :cond_d

    .line 291
    .line 292
    :goto_8
    move v10, v13

    .line 293
    goto :goto_9

    .line 294
    :cond_d
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->b(I)I

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    sub-int/2addr v10, v12

    .line 299
    :goto_9
    if-eq v10, v13, :cond_e

    .line 300
    .line 301
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/ChildHelper;

    .line 302
    .line 303
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/ChildHelper;->c(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->j(Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    const/16 v10, 0x2020

    .line 310
    .line 311
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 312
    .line 313
    .line 314
    move-object v10, v7

    .line 315
    goto :goto_b

    .line 316
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v1, "layout index should not be -1 after unhiding a view:"

    .line 319
    .line 320
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Lio/sentry/d;->h(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    return-object v6

    .line 334
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v2, "trying to unhide a view that was not hidden"

    .line 339
    .line 340
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_10
    const-string v0, "view is not a child, cannot hide "

    .line 355
    .line 356
    invoke-static {v14, v0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-object v6

    .line 360
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    move v10, v8

    .line 365
    :goto_a
    if-ge v10, v7, :cond_13

    .line 366
    .line 367
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 372
    .line 373
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-nez v13, :cond_12

    .line 378
    .line 379
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b()I

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    if-ne v13, v1, :cond_12

    .line 384
    .line 385
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()Z

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-nez v13, :cond_12

    .line 390
    .line 391
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-object v10, v12

    .line 395
    goto :goto_b

    .line 396
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_13
    move-object v10, v6

    .line 400
    :goto_b
    if-eqz v10, :cond_1d

    .line 401
    .line 402
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-eqz v7, :cond_14

    .line 407
    .line 408
    iget-boolean v7, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_14
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 412
    .line 413
    if-ltz v7, :cond_1b

    .line 414
    .line 415
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 416
    .line 417
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->a()I

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    if-ge v7, v12, :cond_1b

    .line 422
    .line 423
    iget-boolean v7, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 424
    .line 425
    if-nez v7, :cond_16

    .line 426
    .line 427
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 428
    .line 429
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 433
    .line 434
    if-eqz v7, :cond_16

    .line 435
    .line 436
    :cond_15
    move v7, v8

    .line 437
    goto :goto_c

    .line 438
    :cond_16
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 439
    .line 440
    iget-boolean v12, v7, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 441
    .line 442
    if-eqz v12, :cond_17

    .line 443
    .line 444
    iget-wide v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 445
    .line 446
    iget v14, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 447
    .line 448
    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b(I)J

    .line 449
    .line 450
    .line 451
    move-result-wide v14

    .line 452
    cmp-long v7, v12, v14

    .line 453
    .line 454
    if-nez v7, :cond_15

    .line 455
    .line 456
    :cond_17
    move/from16 v7, v16

    .line 457
    .line 458
    :goto_c
    if-nez v7, :cond_1a

    .line 459
    .line 460
    const/4 v7, 0x4

    .line 461
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-eqz v7, :cond_18

    .line 469
    .line 470
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 471
    .line 472
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 473
    .line 474
    .line 475
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 476
    .line 477
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 478
    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_18
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    if-eqz v7, :cond_19

    .line 486
    .line 487
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 488
    .line 489
    and-int/lit8 v7, v7, -0x21

    .line 490
    .line 491
    iput v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 492
    .line 493
    :cond_19
    :goto_d
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 494
    .line 495
    .line 496
    move-object v10, v6

    .line 497
    goto :goto_e

    .line 498
    :cond_1a
    move/from16 v4, v16

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 502
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 506
    .line 507
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw v0

    .line 528
    :cond_1c
    const/16 v16, 0x1

    .line 529
    .line 530
    :cond_1d
    :goto_e
    const-wide/16 v17, 0x0

    .line 531
    .line 532
    const-wide v19, 0x7fffffffffffffffL

    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    if-nez v10, :cond_32

    .line 538
    .line 539
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/AdapterHelper;

    .line 540
    .line 541
    invoke-virtual {v7, v1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->e(II)I

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    if-ltz v7, :cond_31

    .line 546
    .line 547
    const-wide/16 v21, 0x3

    .line 548
    .line 549
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 550
    .line 551
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->a()I

    .line 552
    .line 553
    .line 554
    move-result v12

    .line 555
    if-ge v7, v12, :cond_31

    .line 556
    .line 557
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 558
    .line 559
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 563
    .line 564
    iget-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 565
    .line 566
    if-eqz v13, :cond_25

    .line 567
    .line 568
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b(I)J

    .line 569
    .line 570
    .line 571
    move-result-wide v12

    .line 572
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 573
    .line 574
    .line 575
    move-result v10

    .line 576
    add-int/lit8 v10, v10, -0x1

    .line 577
    .line 578
    :goto_f
    if-ltz v10, :cond_21

    .line 579
    .line 580
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v23

    .line 584
    const-wide/16 v24, 0x4

    .line 585
    .line 586
    move-object/from16 v14, v23

    .line 587
    .line 588
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 589
    .line 590
    move/from16 v23, v7

    .line 591
    .line 592
    iget-wide v6, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 593
    .line 594
    iget-object v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 595
    .line 596
    cmp-long v6, v6, v12

    .line 597
    .line 598
    if-nez v6, :cond_20

    .line 599
    .line 600
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p()Z

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    if-nez v6, :cond_20

    .line 605
    .line 606
    iget v6, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 607
    .line 608
    if-nez v6, :cond_1f

    .line 609
    .line 610
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-eqz v5, :cond_1e

    .line 618
    .line 619
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 620
    .line 621
    if-nez v5, :cond_1e

    .line 622
    .line 623
    iget v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 624
    .line 625
    and-int/lit8 v5, v5, -0xf

    .line 626
    .line 627
    or-int/lit8 v5, v5, 0x2

    .line 628
    .line 629
    iput v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 630
    .line 631
    :cond_1e
    move-object v10, v14

    .line 632
    goto :goto_11

    .line 633
    :cond_1f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v15, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 637
    .line 638
    .line 639
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    const/4 v15, 0x0

    .line 644
    iput-object v15, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 645
    .line 646
    iput-boolean v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 647
    .line 648
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 649
    .line 650
    and-int/lit8 v7, v7, -0x21

    .line 651
    .line 652
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 653
    .line 654
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 655
    .line 656
    .line 657
    :cond_20
    add-int/lit8 v10, v10, -0x1

    .line 658
    .line 659
    move/from16 v7, v23

    .line 660
    .line 661
    const/4 v6, 0x0

    .line 662
    goto :goto_f

    .line 663
    :cond_21
    move/from16 v23, v7

    .line 664
    .line 665
    const-wide/16 v24, 0x4

    .line 666
    .line 667
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    add-int/lit8 v5, v5, -0x1

    .line 672
    .line 673
    :goto_10
    if-ltz v5, :cond_23

    .line 674
    .line 675
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v6

    .line 679
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 680
    .line 681
    iget-wide v9, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 682
    .line 683
    cmp-long v7, v9, v12

    .line 684
    .line 685
    if-nez v7, :cond_24

    .line 686
    .line 687
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()Z

    .line 688
    .line 689
    .line 690
    move-result v7

    .line 691
    if-nez v7, :cond_24

    .line 692
    .line 693
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 694
    .line 695
    if-nez v7, :cond_22

    .line 696
    .line 697
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-object v10, v6

    .line 701
    goto :goto_11

    .line 702
    :cond_22
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g(I)V

    .line 703
    .line 704
    .line 705
    :cond_23
    const/4 v10, 0x0

    .line 706
    goto :goto_11

    .line 707
    :cond_24
    add-int/lit8 v5, v5, -0x1

    .line 708
    .line 709
    goto :goto_10

    .line 710
    :goto_11
    if-eqz v10, :cond_26

    .line 711
    .line 712
    move/from16 v5, v23

    .line 713
    .line 714
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 715
    .line 716
    move/from16 v4, v16

    .line 717
    .line 718
    goto :goto_12

    .line 719
    :cond_25
    const-wide/16 v24, 0x4

    .line 720
    .line 721
    :cond_26
    :goto_12
    if-nez v10, :cond_2a

    .line 722
    .line 723
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 728
    .line 729
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 734
    .line 735
    if-eqz v5, :cond_28

    .line 736
    .line 737
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 740
    .line 741
    .line 742
    move-result v6

    .line 743
    if-nez v6, :cond_28

    .line 744
    .line 745
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 746
    .line 747
    .line 748
    move-result v6

    .line 749
    add-int/lit8 v6, v6, -0x1

    .line 750
    .line 751
    :goto_13
    if-ltz v6, :cond_28

    .line 752
    .line 753
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v7

    .line 757
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 758
    .line 759
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()Z

    .line 760
    .line 761
    .line 762
    move-result v7

    .line 763
    if-nez v7, :cond_27

    .line 764
    .line 765
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 770
    .line 771
    goto :goto_14

    .line 772
    :cond_27
    add-int/lit8 v6, v6, -0x1

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_28
    const/4 v5, 0x0

    .line 776
    :goto_14
    if-eqz v5, :cond_29

    .line 777
    .line 778
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->m()V

    .line 779
    .line 780
    .line 781
    sget-object v6, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 782
    .line 783
    :cond_29
    move-object v10, v5

    .line 784
    :cond_2a
    if-nez v10, :cond_33

    .line 785
    .line 786
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 787
    .line 788
    .line 789
    move-result-wide v5

    .line 790
    cmp-long v7, p2, v19

    .line 791
    .line 792
    if-eqz v7, :cond_2d

    .line 793
    .line 794
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 795
    .line 796
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 797
    .line 798
    .line 799
    move-result-object v7

    .line 800
    iget-wide v9, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 801
    .line 802
    cmp-long v7, v9, v17

    .line 803
    .line 804
    if-eqz v7, :cond_2c

    .line 805
    .line 806
    add-long/2addr v9, v5

    .line 807
    cmp-long v7, v9, p2

    .line 808
    .line 809
    if-gez v7, :cond_2b

    .line 810
    .line 811
    goto :goto_15

    .line 812
    :cond_2b
    move v7, v8

    .line 813
    goto :goto_16

    .line 814
    :cond_2c
    :goto_15
    move/from16 v7, v16

    .line 815
    .line 816
    :goto_16
    if-nez v7, :cond_2d

    .line 817
    .line 818
    const/4 v15, 0x0

    .line 819
    return-object v15

    .line 820
    :cond_2d
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 821
    .line 822
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    :try_start_0
    const-string v9, "RV CreateView"

    .line 826
    .line 827
    sget v10, Landroidx/core/os/TraceCompat;->a:I

    .line 828
    .line 829
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 833
    .line 834
    .line 835
    move-result-object v10

    .line 836
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 837
    .line 838
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 839
    .line 840
    .line 841
    move-result-object v9

    .line 842
    if-nez v9, :cond_30

    .line 843
    .line 844
    iput v8, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    .line 846
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 847
    .line 848
    .line 849
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->I0:Z

    .line 850
    .line 851
    if-eqz v9, :cond_2e

    .line 852
    .line 853
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 854
    .line 855
    .line 856
    move-result-object v7

    .line 857
    if-eqz v7, :cond_2e

    .line 858
    .line 859
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 860
    .line 861
    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 862
    .line 863
    .line 864
    iput-object v9, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    .line 865
    .line 866
    :cond_2e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 867
    .line 868
    .line 869
    move-result-wide v11

    .line 870
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 871
    .line 872
    sub-long/2addr v11, v5

    .line 873
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    iget-wide v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 878
    .line 879
    cmp-long v9, v6, v17

    .line 880
    .line 881
    if-nez v9, :cond_2f

    .line 882
    .line 883
    goto :goto_17

    .line 884
    :cond_2f
    div-long v6, v6, v24

    .line 885
    .line 886
    mul-long v6, v6, v21

    .line 887
    .line 888
    div-long v11, v11, v24

    .line 889
    .line 890
    add-long/2addr v11, v6

    .line 891
    :goto_17
    iput-wide v11, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 892
    .line 893
    goto :goto_18

    .line 894
    :cond_30
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 895
    .line 896
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 897
    .line 898
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    :catchall_0
    move-exception v0

    .line 903
    sget v1, Landroidx/core/os/TraceCompat;->a:I

    .line 904
    .line 905
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 906
    .line 907
    .line 908
    throw v0

    .line 909
    :cond_31
    move v5, v7

    .line 910
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 911
    .line 912
    const-string v4, "(offset:"

    .line 913
    .line 914
    const-string v6, ").state:"

    .line 915
    .line 916
    const-string v7, "Inconsistency detected. Invalid item position "

    .line 917
    .line 918
    invoke-static {v7, v1, v4, v5, v6}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    throw v0

    .line 944
    :cond_32
    const-wide/16 v21, 0x3

    .line 945
    .line 946
    const-wide/16 v24, 0x4

    .line 947
    .line 948
    :cond_33
    :goto_18
    iget-object v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 949
    .line 950
    if-eqz v4, :cond_35

    .line 951
    .line 952
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 953
    .line 954
    if-nez v6, :cond_35

    .line 955
    .line 956
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 957
    .line 958
    and-int/lit16 v7, v6, 0x2000

    .line 959
    .line 960
    if-eqz v7, :cond_34

    .line 961
    .line 962
    move/from16 v7, v16

    .line 963
    .line 964
    goto :goto_19

    .line 965
    :cond_34
    move v7, v8

    .line 966
    :goto_19
    if-eqz v7, :cond_35

    .line 967
    .line 968
    and-int/lit16 v6, v6, -0x2001

    .line 969
    .line 970
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 971
    .line 972
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->j:Z

    .line 973
    .line 974
    if-eqz v6, :cond_35

    .line 975
    .line 976
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 977
    .line 978
    .line 979
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 980
    .line 981
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()Ljava/util/List;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 985
    .line 986
    .line 987
    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 988
    .line 989
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 996
    .line 997
    .line 998
    :cond_35
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 999
    .line 1000
    if-eqz v6, :cond_36

    .line 1001
    .line 1002
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v6

    .line 1006
    if-eqz v6, :cond_36

    .line 1007
    .line 1008
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g:I

    .line 1009
    .line 1010
    goto :goto_1b

    .line 1011
    :cond_36
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v6

    .line 1015
    if-eqz v6, :cond_39

    .line 1016
    .line 1017
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1018
    .line 1019
    and-int/lit8 v6, v6, 0x2

    .line 1020
    .line 1021
    if-eqz v6, :cond_37

    .line 1022
    .line 1023
    move/from16 v6, v16

    .line 1024
    .line 1025
    goto :goto_1a

    .line 1026
    :cond_37
    move v6, v8

    .line 1027
    :goto_1a
    if-nez v6, :cond_39

    .line 1028
    .line 1029
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v6

    .line 1033
    if-eqz v6, :cond_38

    .line 1034
    .line 1035
    goto :goto_1c

    .line 1036
    :cond_38
    :goto_1b
    move v0, v8

    .line 1037
    move/from16 v7, v16

    .line 1038
    .line 1039
    goto/16 :goto_21

    .line 1040
    .line 1041
    :cond_39
    :goto_1c
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/AdapterHelper;

    .line 1042
    .line 1043
    invoke-virtual {v6, v1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->e(II)I

    .line 1044
    .line 1045
    .line 1046
    move-result v6

    .line 1047
    const/4 v15, 0x0

    .line 1048
    iput-object v15, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1049
    .line 1050
    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1051
    .line 1052
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 1053
    .line 1054
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v11

    .line 1058
    cmp-long v9, p2, v19

    .line 1059
    .line 1060
    if-eqz v9, :cond_3a

    .line 1061
    .line 1062
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1063
    .line 1064
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v7

    .line 1068
    iget-wide v13, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1069
    .line 1070
    cmp-long v7, v13, v17

    .line 1071
    .line 1072
    if-eqz v7, :cond_3a

    .line 1073
    .line 1074
    add-long/2addr v13, v11

    .line 1075
    cmp-long v7, v13, p2

    .line 1076
    .line 1077
    if-gez v7, :cond_38

    .line 1078
    .line 1079
    :cond_3a
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1080
    .line 1081
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    iget-object v9, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1085
    .line 1086
    if-nez v9, :cond_3b

    .line 1087
    .line 1088
    move/from16 v9, v16

    .line 1089
    .line 1090
    goto :goto_1d

    .line 1091
    :cond_3b
    move v9, v8

    .line 1092
    :goto_1d
    if-eqz v9, :cond_3d

    .line 1093
    .line 1094
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 1095
    .line 1096
    iget-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 1097
    .line 1098
    if-eqz v13, :cond_3c

    .line 1099
    .line 1100
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b(I)J

    .line 1101
    .line 1102
    .line 1103
    move-result-wide v13

    .line 1104
    iput-wide v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 1105
    .line 1106
    :cond_3c
    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1107
    .line 1108
    and-int/lit16 v13, v13, -0x208

    .line 1109
    .line 1110
    or-int/lit8 v13, v13, 0x1

    .line 1111
    .line 1112
    iput v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1113
    .line 1114
    sget v13, Landroidx/core/os/TraceCompat;->a:I

    .line 1115
    .line 1116
    const-string v13, "RV OnBindView"

    .line 1117
    .line 1118
    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    :cond_3d
    iput-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1122
    .line 1123
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()Ljava/util/List;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v7, v10, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1127
    .line 1128
    .line 1129
    if-eqz v9, :cond_40

    .line 1130
    .line 1131
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k:Ljava/util/ArrayList;

    .line 1132
    .line 1133
    if-eqz v6, :cond_3e

    .line 1134
    .line 1135
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1136
    .line 1137
    .line 1138
    :cond_3e
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1139
    .line 1140
    and-int/lit16 v6, v6, -0x401

    .line 1141
    .line 1142
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1143
    .line 1144
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v6

    .line 1148
    instance-of v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1149
    .line 1150
    if-eqz v7, :cond_3f

    .line 1151
    .line 1152
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1153
    .line 1154
    move/from16 v7, v16

    .line 1155
    .line 1156
    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Z

    .line 1157
    .line 1158
    :cond_3f
    sget v6, Landroidx/core/os/TraceCompat;->a:I

    .line 1159
    .line 1160
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1161
    .line 1162
    .line 1163
    :cond_40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1164
    .line 1165
    .line 1166
    move-result-wide v6

    .line 1167
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1168
    .line 1169
    iget v9, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 1170
    .line 1171
    sub-long/2addr v6, v11

    .line 1172
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    iget-wide v11, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1177
    .line 1178
    cmp-long v9, v11, v17

    .line 1179
    .line 1180
    if-nez v9, :cond_41

    .line 1181
    .line 1182
    goto :goto_1e

    .line 1183
    :cond_41
    div-long v11, v11, v24

    .line 1184
    .line 1185
    mul-long v11, v11, v21

    .line 1186
    .line 1187
    div-long v6, v6, v24

    .line 1188
    .line 1189
    add-long/2addr v6, v11

    .line 1190
    :goto_1e
    iput-wide v6, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1191
    .line 1192
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/view/accessibility/AccessibilityManager;

    .line 1193
    .line 1194
    if-eqz v0, :cond_42

    .line 1195
    .line 1196
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v0

    .line 1200
    if-eqz v0, :cond_42

    .line 1201
    .line 1202
    const/4 v7, 0x1

    .line 1203
    goto :goto_1f

    .line 1204
    :cond_42
    move v7, v8

    .line 1205
    :goto_1f
    if-eqz v7, :cond_46

    .line 1206
    .line 1207
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 1208
    .line 1209
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1210
    .line 1211
    .line 1212
    move-result v0

    .line 1213
    const/4 v7, 0x1

    .line 1214
    if-nez v0, :cond_43

    .line 1215
    .line 1216
    invoke-virtual {v5, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1217
    .line 1218
    .line 1219
    :cond_43
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 1220
    .line 1221
    if-nez v0, :cond_44

    .line 1222
    .line 1223
    goto :goto_20

    .line 1224
    :cond_44
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->n:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1225
    .line 1226
    if-eqz v0, :cond_45

    .line 1227
    .line 1228
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->c(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v6

    .line 1232
    if-eqz v6, :cond_45

    .line 1233
    .line 1234
    if-eq v6, v0, :cond_45

    .line 1235
    .line 1236
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->n:Ljava/util/WeakHashMap;

    .line 1237
    .line 1238
    invoke-virtual {v9, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    :cond_45
    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1242
    .line 1243
    .line 1244
    goto :goto_20

    .line 1245
    :cond_46
    const/4 v7, 0x1

    .line 1246
    :goto_20
    iget-boolean v0, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 1247
    .line 1248
    if-eqz v0, :cond_47

    .line 1249
    .line 1250
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g:I

    .line 1251
    .line 1252
    :cond_47
    move v0, v7

    .line 1253
    :goto_21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    if-nez v1, :cond_48

    .line 1258
    .line 1259
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1264
    .line 1265
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_22

    .line 1269
    :cond_48
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-nez v3, :cond_49

    .line 1274
    .line 1275
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1280
    .line 1281
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_22

    .line 1285
    :cond_49
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1286
    .line 1287
    :goto_22
    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1288
    .line 1289
    if-eqz v4, :cond_4a

    .line 1290
    .line 1291
    if-eqz v0, :cond_4a

    .line 1292
    .line 1293
    goto :goto_23

    .line 1294
    :cond_4a
    move v7, v8

    .line 1295
    :goto_23
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    .line 1296
    .line 1297
    return-object v10

    .line 1298
    :cond_4b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1299
    .line 1300
    const-string v4, "("

    .line 1301
    .line 1302
    const-string v5, "). Item count:"

    .line 1303
    .line 1304
    const-string v6, "Invalid item position "

    .line 1305
    .line 1306
    invoke-static {v6, v1, v4, v1, v5}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    throw v0
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-boolean p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 21
    .line 22
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 23
    .line 24
    and-int/lit8 p0, p0, -0x21

    .line 25
    .line 26
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
