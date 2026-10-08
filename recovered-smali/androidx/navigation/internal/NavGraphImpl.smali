.class public final Landroidx/navigation/internal/NavGraphImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/navigation/NavGraph;

.field public final b:Landroidx/collection/SparseArrayCompat;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 5
    .line 6
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/navigation/NavDestination;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/navigation/internal/NavGraphImpl;->c(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/collection/SparseArrayKt$valueIterator$1;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v3, v1

    .line 34
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 35
    .line 36
    iget-object v4, v3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    iget-object v3, v3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v1, v2

    .line 57
    :cond_2
    :goto_0
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_3
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavGraphImpl;->b(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_4
    return-object v2

    .line 88
    :cond_5
    return-object v1
.end method

.method public final c(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 19
    .line 20
    iget-object v4, p3, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-eqz v1, :cond_2

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 35
    .line 36
    if-eqz p4, :cond_6

    .line 37
    .line 38
    new-instance v1, Landroidx/collection/SparseArrayKt$valueIterator$1;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 62
    .line 63
    instance-of v3, v1, Landroidx/navigation/NavGraph;

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    check-cast v1, Landroidx/navigation/NavGraph;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    iget-object v1, v1, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 77
    .line 78
    invoke-virtual {v1, p1, p0, p3, v3}, Landroidx/navigation/internal/NavGraphImpl;->c(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    move-object v1, v2

    .line 84
    :goto_1
    if-eqz v1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move-object v1, v2

    .line 88
    :cond_6
    :goto_2
    if-nez v1, :cond_8

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_7

    .line 99
    .line 100
    iget-object p2, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p2, p2, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 106
    .line 107
    invoke-virtual {p2, p1, p0, p3, p4}, Landroidx/navigation/internal/NavGraphImpl;->c(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_7
    return-object v2

    .line 113
    :cond_8
    return-object v1
.end method

.method public final d(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 24
    .line 25
    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->d(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1, p4}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, p2, p0}, Landroidx/navigation/NavGraph;->e(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_3
    filled-new-array {p1, v0, v3}, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 76
    .line 77
    return-object p0
.end method
