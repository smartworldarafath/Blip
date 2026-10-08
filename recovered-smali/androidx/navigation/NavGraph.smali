.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavGraph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestination;",
        "Ljava/lang/Iterable<",
        "Landroidx/navigation/NavDestination;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final o:Landroidx/navigation/internal/NavGraphImpl;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraphNavigator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/navigation/internal/NavGraphImpl;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroidx/navigation/internal/NavGraphImpl;-><init>(Landroidx/navigation/NavGraph;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->d(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/navigation/internal/NavGraphImpl;->d(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final e(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->d(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/navigation/internal/NavGraphImpl;->d(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_4

    .line 5
    .line 6
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    check-cast p1, Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 28
    .line 29
    iget-object v1, p1, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    iget v0, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 38
    .line 39
    iget v1, p1, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroidx/collection/SparseArrayKt$valueIterator$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 72
    .line 73
    iget-object v1, p1, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 76
    .line 77
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 91
    return p0

    .line 92
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 93
    return p0
.end method

.method public final f(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 35
    .line 36
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    instance-of v4, v3, Landroidx/navigation/NavGraph;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v3, p1, v4, p0}, Landroidx/navigation/NavGraph;->f(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v3, v3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_1
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-virtual {v2, p3}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    invoke-virtual {v2, p1, p2, p0}, Landroidx/navigation/NavGraph;->f(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    :cond_4
    filled-new-array {v0, v1, v4}, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 106
    .line 107
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 2
    .line 3
    iget v0, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->g(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    add-int/2addr v0, v3

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v0, v3

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;-><init>(Landroidx/navigation/internal/NavGraphImpl;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0, v1, v2}, Landroidx/navigation/internal/NavGraphImpl;->b(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget v1, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    const-string v2, " startDestination="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->d:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    iget p0, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 68
    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "0x"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    const-string p0, "{"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, "}"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
