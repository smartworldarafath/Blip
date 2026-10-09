.class Landroidx/recyclerview/widget/ChildHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ChildHelper$Bucket;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$5;

.field public final b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 5
    .line 6
    new-instance p1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ChildHelper;->f(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 17
    .line 18
    invoke-virtual {v1, p2, p3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->e(IZ)V

    .line 19
    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->i(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ChildHelper;->f(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 17
    .line 18
    invoke-virtual {v1, p2, p4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->e(IZ)V

    .line 19
    .line 20
    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->i(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-nez p4, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o()Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-eqz p4, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p3, "Called attach on a child which is not detached: "

    .line 50
    .line 51
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_3
    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 73
    .line 74
    and-int/lit16 p4, p4, -0x101

    .line 75
    .line 76
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 77
    .line 78
    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->f(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->f(I)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "called detach on an already detached child "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    :goto_0
    const/16 v1, 0x100

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final d(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->f(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final f(I)I
    .locals 4

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    move v1, p1

    .line 13
    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int v3, v1, v3

    .line 22
    .line 23
    sub-int v3, p1, v3

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    return v1

    .line 37
    :cond_2
    add-int/2addr v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_2
    const/4 p0, -0x1

    .line 40
    return p0
.end method

.method public final g(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final h()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p:I

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x4

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q:I

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object p0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q:I

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 36
    .line 37
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x0

    .line 43
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->p:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", hidden list:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
