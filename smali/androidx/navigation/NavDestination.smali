.class public abstract Landroidx/navigation/NavDestination;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDestination$Companion;,
        Landroidx/navigation/NavDestination$DeepLinkMatch;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public final j:Ljava/lang/String;

.field public final k:Landroidx/navigation/internal/NavDestinationImpl;

.field public l:Landroidx/navigation/NavGraph;

.field public final m:Landroidx/collection/SparseArrayCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/navigation/NavigatorProvider;->b:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroidx/navigation/NavigatorProvider$Companion;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Landroidx/navigation/internal/NavDestinationImpl;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroidx/navigation/internal/NavDestinationImpl;-><init>(Landroidx/navigation/NavDestination;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 25
    .line 26
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/navigation/NavDestination;->m:Landroidx/collection/SparseArrayCompat;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Lkotlin/Pair;

    .line 17
    .line 18
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [Lkotlin/Pair;

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/navigation/NavArgument;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-boolean v5, v3, Landroidx/navigation/NavArgument;->b:Z

    .line 67
    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    iget-object v5, v3, Landroidx/navigation/NavArgument;->c:Ljava/lang/Object;

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    iget-object v3, v3, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    .line 75
    .line 76
    invoke-virtual {v3, v1, v4, v5}, Landroidx/navigation/NavType;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/util/Map$Entry;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/String;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroidx/navigation/NavArgument;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_3

    .line 130
    .line 131
    invoke-static {v2, v1}, Landroidx/savedstate/SavedStateReader;->d(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_4

    .line 136
    .line 137
    :cond_3
    :try_start_0
    invoke-virtual {p1, v2, v1}, Landroidx/navigation/NavType;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_0
    :cond_4
    invoke-virtual {p1}, Landroidx/navigation/NavType;->b()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string p1, "\' in argument savedState. "

    .line 146
    .line 147
    const-string v1, " expected."

    .line 148
    .line 149
    const-string v3, "Wrong argument type for \'"

    .line 150
    .line 151
    invoke-static {v3, v2, p1, p0, v1}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_5
    return-object v1
.end method

.method public final c(Landroidx/navigation/NavDestination;)[I
    .locals 5

    .line 1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v3, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_1
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget v4, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-ne v3, p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v3, v2, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 40
    .line 41
    iget v3, v3, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 42
    .line 43
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 44
    .line 45
    if-eq v3, v1, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    if-nez v2, :cond_6

    .line 58
    .line 59
    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    .line 64
    .line 65
    const/16 v0, 0xa

    .line 66
    .line 67
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 91
    .line 92
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->W(Ljava/util/List;)[I

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_6
    move-object p0, v2

    .line 108
    goto :goto_0
.end method

.method public d(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    iget-object v3, v1, Landroidx/navigation/NavDeepLinkRequest;->a:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v4, v0, Landroidx/navigation/internal/NavDestinationImpl;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    return-object v6

    .line 21
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v5, v6

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_e

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroidx/navigation/NavDeepLink;

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v8, v7, Landroidx/navigation/NavDeepLink;->d:Lkotlin/Lazy;

    .line 42
    .line 43
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Lkotlin/text/Regex;

    .line 48
    .line 49
    const/4 v10, 0x1

    .line 50
    const/4 v11, 0x0

    .line 51
    if-nez v9, :cond_2

    .line 52
    .line 53
    move v9, v10

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-nez v3, :cond_3

    .line 56
    .line 57
    move v9, v11

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Lkotlin/text/Regex;

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-virtual {v9, v12}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    :goto_1
    if-eqz v9, :cond_1

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v7, v3, v2}, Landroidx/navigation/NavDeepLink;->c(Landroid/net/Uri;Ljava/util/LinkedHashMap;)Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    move-object v14, v9

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object v14, v6

    .line 87
    :goto_2
    iget-object v9, v7, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    if-nez v9, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v12, v9}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-interface {v9}, Ljava/util/Set;->size()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    move/from16 v16, v9

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    :goto_3
    move/from16 v16, v11

    .line 121
    .line 122
    :goto_4
    iget-object v9, v1, Landroidx/navigation/NavDeepLinkRequest;->b:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_7

    .line 131
    .line 132
    move/from16 v17, v10

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    move/from16 v17, v11

    .line 136
    .line 137
    :goto_5
    if-nez v14, :cond_c

    .line 138
    .line 139
    if-nez v17, :cond_8

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-array v9, v11, [Lkotlin/Pair;

    .line 146
    .line 147
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, [Lkotlin/Pair;

    .line 152
    .line 153
    invoke-static {v9}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-nez v3, :cond_9

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_9
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    check-cast v8, Lkotlin/text/Regex;

    .line 165
    .line 166
    if-eqz v8, :cond_b

    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-virtual {v8, v11}, Lkotlin/text/Regex;->c(Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-nez v8, :cond_a

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_a
    invoke-virtual {v7, v8, v9, v2}, Landroidx/navigation/NavDeepLink;->d(Lkotlin/text/MatchResult;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 180
    .line 181
    .line 182
    iget-object v8, v7, Landroidx/navigation/NavDeepLink;->e:Lkotlin/Lazy;

    .line 183
    .line 184
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-eqz v8, :cond_b

    .line 195
    .line 196
    invoke-virtual {v7, v3, v9, v2}, Landroidx/navigation/NavDeepLink;->e(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 197
    .line 198
    .line 199
    :cond_b
    :goto_6
    new-instance v8, Lsb;

    .line 200
    .line 201
    invoke-direct {v8, v10, v9}, Lsb;-><init>(ILandroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v8}, Landroidx/navigation/NavArgumentKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v8, :cond_1

    .line 213
    .line 214
    :cond_c
    new-instance v12, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 215
    .line 216
    iget-object v13, v0, Landroidx/navigation/internal/NavDestinationImpl;->a:Landroidx/navigation/NavDestination;

    .line 217
    .line 218
    iget-boolean v15, v7, Landroidx/navigation/NavDeepLink;->l:Z

    .line 219
    .line 220
    invoke-direct/range {v12 .. v17}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZ)V

    .line 221
    .line 222
    .line 223
    if-eqz v5, :cond_d

    .line 224
    .line 225
    invoke-virtual {v12, v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->a(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-lez v7, :cond_1

    .line 230
    .line 231
    :cond_d
    move-object v5, v12

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_e
    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_4

    .line 5
    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    instance-of v2, p1, Landroidx/navigation/NavDestination;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/navigation/internal/NavDestinationImpl;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 20
    .line 21
    iget-object v4, p1, Landroidx/navigation/NavDestination;->m:Landroidx/collection/SparseArrayCompat;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 24
    .line 25
    iget-object v5, p1, Landroidx/navigation/internal/NavDestinationImpl;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object p0, p0, Landroidx/navigation/NavDestination;->m:Landroidx/collection/SparseArrayCompat;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->f()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ne v5, v6, :cond_4

    .line 42
    .line 43
    new-instance v5, Landroidx/collection/SparseArrayKt$keyIterator$1;

    .line 44
    .line 45
    invoke-direct {v5, p0}, Landroidx/collection/SparseArrayKt$keyIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {p0, v6}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4, v6}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move p0, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_0
    move p0, v1

    .line 90
    :goto_1
    iget-object v4, v2, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    iget-object v5, p1, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v6, v7, :cond_6

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/Iterable;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/util/Map$Entry;

    .line 128
    .line 129
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_6

    .line 138
    .line 139
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move v4, v0

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move v4, v1

    .line 161
    :goto_3
    iget v5, v2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 162
    .line 163
    iget v6, p1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 164
    .line 165
    if-ne v5, v6, :cond_7

    .line 166
    .line 167
    iget-object v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 168
    .line 169
    iget-object p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    if-eqz v3, :cond_7

    .line 178
    .line 179
    if-eqz p0, :cond_7

    .line 180
    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    :goto_4
    return v0

    .line 184
    :cond_7
    :goto_5
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 2
    .line 3
    iget v1, v0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    mul-int/2addr v1, v2

    .line 8
    iget-object v3, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v4

    .line 19
    :goto_0
    add-int/2addr v1, v3

    .line 20
    iget-object v3, v0, Landroidx/navigation/internal/NavDestinationImpl;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroidx/navigation/NavDeepLink;

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object v5, v5, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    move v5, v4

    .line 50
    :goto_2
    add-int/2addr v1, v5

    .line 51
    mul-int/lit16 v1, v1, 0x3c1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object p0, p0, Landroidx/navigation/NavDestination;->m:Landroidx/collection/SparseArrayCompat;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v3, Landroidx/collection/SparseArrayKt$valueIterator$1;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/collection/SparseArrayKt$valueIterator$1;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_5

    .line 69
    .line 70
    iget-object p0, v0, Landroidx/navigation/internal/NavDestinationImpl;->c:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    mul-int/lit8 v1, v1, 0x1f

    .line 95
    .line 96
    invoke-static {v3, v1, v2}, Ljb;->c(Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move v3, v4

    .line 112
    :goto_4
    add-int/2addr v1, v3

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    return v1

    .line 115
    :cond_5
    invoke-virtual {v3}, Landroidx/collection/SparseArrayKt$valueIterator$1;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lio/sentry/d;->i()V

    .line 123
    .line 124
    .line 125
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "(0x"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v1, " route="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
