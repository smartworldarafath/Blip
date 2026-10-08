.class public final Landroidx/navigation/NavDeepLinkBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/navigation/internal/NavContext;

.field public final c:Landroid/content/Intent;

.field public final d:Landroidx/navigation/NavGraph;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->a:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v1, Landroidx/navigation/internal/NavContext;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/navigation/NavDeepLinkBuilder;->b:Landroidx/navigation/internal/NavContext;

    .line 20
    .line 21
    new-instance v1, Lla;

    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lla;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lla;

    .line 33
    .line 34
    const/16 v3, 0xe

    .line 35
    .line 36
    invoke-direct {v2, v3}, Lla;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lkotlin/sequences/TransformingSequence;

    .line 40
    .line 41
    invoke-direct {v3, v1, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lle;

    .line 45
    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lle;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 52
    .line 53
    invoke-direct {v2, v3, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/TransformingSequence;Lle;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_0
    check-cast v1, Landroid/app/Activity;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    new-instance v2, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    new-instance v2, Landroid/content/Intent;

    .line 102
    .line 103
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    const v0, 0x10008000

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Landroidx/navigation/NavDeepLinkBuilder;->c:Landroid/content/Intent;

    .line 113
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object p1, p1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->g()Landroidx/navigation/NavGraph;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/app/TaskStackBuilder;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 3
    .line 4
    if-eqz v1, :cond_6

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/navigation/NavDeepLinkBuilder;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_5

    .line 13
    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v5, v0

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 41
    .line 42
    iget v8, v6, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->a:I

    .line 43
    .line 44
    iget-object v6, v6, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->b:Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-virtual {p0, v8}, Landroidx/navigation/NavDeepLinkBuilder;->b(I)Landroidx/navigation/NavDestination;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    if-eqz v9, :cond_1

    .line 51
    .line 52
    invoke-virtual {v9, v5}, Landroidx/navigation/NavDestination;->c(Landroidx/navigation/NavDestination;)[I

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    array-length v8, v5

    .line 57
    :goto_1
    if-ge v7, v8, :cond_0

    .line 58
    .line 59
    aget v10, v5, v7

    .line 60
    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    move-object v5, v9

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget v2, Landroidx/navigation/NavDestination;->n:I

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/navigation/NavDeepLinkBuilder;->b:Landroidx/navigation/internal/NavContext;

    .line 79
    .line 80
    invoke-static {p0, v8}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v2, "Navigation destination "

    .line 85
    .line 86
    const-string v3, " cannot be found in the navigation graph "

    .line 87
    .line 88
    invoke-static {v2, p0, v3, v1}, Lu2;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->W(Ljava/util/List;)[I

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "android-support-nav:controller:deepLinkIds"

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/navigation/NavDeepLinkBuilder;->c:Landroid/content/Intent;

    .line 99
    .line 100
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v0, "android-support-nav:controller:deepLinkArgs"

    .line 104
    .line 105
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    new-instance v0, Landroidx/core/app/TaskStackBuilder;

    .line 109
    .line 110
    iget-object p0, p0, Landroidx/navigation/NavDeepLinkBuilder;->a:Landroid/content/Context;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Landroid/content/Intent;

    .line 116
    .line 117
    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0}, Landroidx/core/app/TaskStackBuilder;->b(Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, v0, Landroidx/core/app/TaskStackBuilder;->j:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    :goto_2
    if-ge v7, v1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Landroid/content/Intent;

    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    const-string v4, "android-support-nav:controller:deepLinkIntent"

    .line 140
    .line 141
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    return-object v0

    .line 148
    :cond_5
    const-string p0, "You must call setDestination() or addDestination() before constructing the deep link"

    .line 149
    .line 150
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_6
    const-string p0, "You must call setGraph() before constructing the deep link"

    .line 155
    .line 156
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method public final b(I)Landroidx/navigation/NavDestination;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 27
    .line 28
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 29
    .line 30
    if-ne v1, p1, :cond_1

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    instance-of v1, p0, Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    move-object v1, p0

    .line 44
    check-cast v1, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 18
    .line 19
    iget v1, v1, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->a:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/navigation/NavDeepLinkBuilder;->b(I)Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget v0, Landroidx/navigation/NavDestination;->n:I

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder;->b:Landroidx/navigation/internal/NavContext;

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Navigation destination "

    .line 37
    .line 38
    const-string v2, " cannot be found in the navigation graph "

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 41
    .line 42
    invoke-static {v1, v0, v2, p0}, Lk8;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
