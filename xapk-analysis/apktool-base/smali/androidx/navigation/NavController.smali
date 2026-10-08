.class public abstract Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$NavControllerNavigatorState;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/navigation/internal/NavControllerImpl;

.field public final c:Landroidx/navigation/internal/NavContext;

.field public final d:Landroid/app/Activity;

.field public e:Z

.field public final f:Landroidx/navigation/NavController$onBackPressedCallback$1;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    new-instance v1, Lg9;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p0, v2}, Lg9;-><init>(Landroidx/navigation/NavController;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroidx/navigation/internal/NavControllerImpl;-><init>(Landroidx/navigation/NavController;Lg9;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 21
    .line 22
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 28
    .line 29
    new-instance v0, Lla;

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lla;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/content/Context;

    .line 56
    .line 57
    instance-of v1, v1, Landroid/app/Activity;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/navigation/NavController;->d:Landroid/app/Activity;

    .line 66
    .line 67
    new-instance p1, Landroidx/navigation/NavController$onBackPressedCallback$1;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Landroidx/navigation/NavController$onBackPressedCallback$1;-><init>(Landroidx/navigation/NavController;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/navigation/NavController;->f:Landroidx/navigation/NavController$onBackPressedCallback$1;

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Landroidx/navigation/NavController;->g:Z

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 78
    .line 79
    iget-object p1, p1, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 80
    .line 81
    new-instance v0, Landroidx/navigation/NavGraphNavigator;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 90
    .line 91
    iget-object p1, p1, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 92
    .line 93
    new-instance v0, Landroidx/navigation/ActivityNavigator;

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lg9;

    .line 104
    .line 105
    const/4 v0, 0x3

    .line 106
    invoke-direct {p1, p0, v0}, Lg9;-><init>(Landroidx/navigation/NavController;I)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static b(Landroidx/navigation/NavController;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavGraph;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1, v0}, Landroidx/navigation/NavGraph;->f(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p1, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->j:Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->k:Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v1, v0, [Lkotlin/Pair;

    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [Lkotlin/Pair;

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    sget v1, Landroidx/navigation/NavDestination;->n:I

    .line 48
    .line 49
    iget-object v1, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const-string v2, "android-app://androidx.navigation/"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v1, ""

    .line 63
    .line 64
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v2, Landroid/content/Intent;

    .line 72
    .line 73
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v0, v3}, Landroidx/navigation/internal/NavControllerImpl;->k(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 93
    .line 94
    const-string v0, "Navigation destination that matches route "

    .line 95
    .line 96
    const-string v1, " cannot be found in the navigation graph "

    .line 97
    .line 98
    invoke-static {v0, p1, v1, p0}, Lk8;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const-string v0, ". Navigation graph has not been set for NavController "

    .line 103
    .line 104
    const-string v1, "."

    .line 105
    .line 106
    const-string v2, "Cannot navigate to "

    .line 107
    .line 108
    invoke-static {v2, p1, v0, p0, v1}, Lk8;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 43
    .line 44
    const-string v0, "Count overflow has happened."

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_3
    return v0
.end method

.method public final c()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_13

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroid/app/Activity;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v3, v1

    .line 27
    :goto_1
    const-string v4, "android-support-nav:controller:deepLinkIds"

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object v3, v1

    .line 37
    :goto_2
    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 38
    .line 39
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    iget-object v8, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 43
    .line 44
    if-eqz v3, :cond_d

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroidx/navigation/NavController;->e(Landroid/content/Intent;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_d

    .line 51
    .line 52
    iget-boolean v2, p0, Landroidx/navigation/NavController;->e:Z

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v9, Ljava/util/ArrayList;

    .line 80
    .line 81
    array-length v10, v4

    .line 82
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    array-length v10, v4

    .line 86
    move v11, v7

    .line 87
    :goto_3
    if-ge v11, v10, :cond_4

    .line 88
    .line 89
    aget v12, v4, v11

    .line 90
    .line 91
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v11, v11, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const-string v4, "android-support-nav:controller:deepLinkArgs"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    const/4 v11, 0x2

    .line 112
    if-ge v10, v11, :cond_5

    .line 113
    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :cond_5
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    check-cast v11, Landroid/os/Bundle;

    .line 133
    .line 134
    :cond_6
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->g()Landroidx/navigation/NavGraph;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-static {v10, v11, v1, v7}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    instance-of v12, v11, Landroidx/navigation/NavGraph;

    .line 143
    .line 144
    if-eqz v12, :cond_7

    .line 145
    .line 146
    sget v10, Landroidx/navigation/NavGraph;->p:I

    .line 147
    .line 148
    check-cast v11, Landroidx/navigation/NavGraph;

    .line 149
    .line 150
    invoke-static {v11}, Landroidx/navigation/NavGraph$Companion;->a(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    iget-object v10, v10, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 155
    .line 156
    iget v10, v10, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 157
    .line 158
    :cond_7
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    if-eqz v8, :cond_12

    .line 163
    .line 164
    iget-object v8, v8, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 165
    .line 166
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 167
    .line 168
    if-ne v10, v8, :cond_12

    .line 169
    .line 170
    new-instance v8, Landroidx/navigation/NavDeepLinkBuilder;

    .line 171
    .line 172
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 173
    .line 174
    invoke-direct {v8, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavHostController;)V

    .line 175
    .line 176
    .line 177
    new-array p0, v7, [Lkotlin/Pair;

    .line 178
    .line 179
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, [Lkotlin/Pair;

    .line 184
    .line 185
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-eqz v2, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    iget-object v2, v8, Landroidx/navigation/NavDeepLinkBuilder;->c:Landroid/content/Intent;

    .line 202
    .line 203
    invoke-virtual {v2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_c

    .line 215
    .line 216
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    add-int/lit8 v3, v7, 0x1

    .line 221
    .line 222
    if-ltz v7, :cond_b

    .line 223
    .line 224
    check-cast v2, Ljava/lang/Number;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v4, :cond_9

    .line 231
    .line 232
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Landroid/os/Bundle;

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_9
    move-object v5, v1

    .line 240
    :goto_5
    new-instance v6, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 241
    .line 242
    invoke-direct {v6, v2, v5}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v8, Landroidx/navigation/NavDeepLinkBuilder;->e:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    iget-object v2, v8, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 251
    .line 252
    if-eqz v2, :cond_a

    .line 253
    .line 254
    invoke-virtual {v8}, Landroidx/navigation/NavDeepLinkBuilder;->c()V

    .line 255
    .line 256
    .line 257
    :cond_a
    move v7, v3

    .line 258
    goto :goto_4

    .line 259
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 260
    .line 261
    .line 262
    throw v1

    .line 263
    :cond_c
    invoke-virtual {v8}, Landroidx/navigation/NavDeepLinkBuilder;->a()Landroidx/core/app/TaskStackBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->c()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_d
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    iget-object v3, v2, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 282
    .line 283
    iget v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 284
    .line 285
    iget-object v2, v2, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 286
    .line 287
    :goto_6
    if-eqz v2, :cond_12

    .line 288
    .line 289
    iget-object v4, v2, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 290
    .line 291
    iget-object v9, v2, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 292
    .line 293
    iget v9, v9, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 294
    .line 295
    if-eq v9, v3, :cond_11

    .line 296
    .line 297
    new-array v2, v7, [Lkotlin/Pair;

    .line 298
    .line 299
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, [Lkotlin/Pair;

    .line 304
    .line 305
    invoke-static {v2}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-eqz v0, :cond_f

    .line 310
    .line 311
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    if-eqz v3, :cond_f

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-eqz v3, :cond_f

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavGraph;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v7, Landroidx/navigation/NavDeepLinkRequest;

    .line 349
    .line 350
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-direct {v7, v8, v9, v6}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v7, v3}, Landroidx/navigation/NavGraph;->e(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    if-eqz v3, :cond_e

    .line 370
    .line 371
    iget-object v6, v3, Landroidx/navigation/NavDestination$DeepLinkMatch;->k:Landroid/os/Bundle;

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_e
    move-object v6, v1

    .line 375
    :goto_7
    if-eqz v6, :cond_f

    .line 376
    .line 377
    iget-object v6, v3, Landroidx/navigation/NavDestination$DeepLinkMatch;->j:Landroidx/navigation/NavDestination;

    .line 378
    .line 379
    iget-object v3, v3, Landroidx/navigation/NavDestination$DeepLinkMatch;->k:Landroid/os/Bundle;

    .line 380
    .line 381
    invoke-virtual {v6, v3}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    if-eqz v3, :cond_f

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 388
    .line 389
    .line 390
    :cond_f
    new-instance v3, Landroidx/navigation/NavDeepLinkBuilder;

    .line 391
    .line 392
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 393
    .line 394
    invoke-direct {v3, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavHostController;)V

    .line 395
    .line 396
    .line 397
    iget p0, v4, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 398
    .line 399
    iget-object v4, v3, Landroidx/navigation/NavDeepLinkBuilder;->e:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 402
    .line 403
    .line 404
    new-instance v6, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 405
    .line 406
    invoke-direct {v6, p0, v1}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    iget-object p0, v3, Landroidx/navigation/NavDeepLinkBuilder;->d:Landroidx/navigation/NavGraph;

    .line 413
    .line 414
    if-eqz p0, :cond_10

    .line 415
    .line 416
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLinkBuilder;->c()V

    .line 417
    .line 418
    .line 419
    :cond_10
    iget-object p0, v3, Landroidx/navigation/NavDeepLinkBuilder;->c:Landroid/content/Intent;

    .line 420
    .line 421
    invoke-virtual {p0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3}, Landroidx/navigation/NavDeepLinkBuilder;->a()Landroidx/core/app/TaskStackBuilder;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->c()V

    .line 429
    .line 430
    .line 431
    if-eqz v0, :cond_12

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :cond_11
    iget v3, v4, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 438
    .line 439
    iget-object v2, v2, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 440
    .line 441
    goto/16 :goto_6

    .line 442
    .line 443
    :cond_12
    :goto_8
    return-void

    .line 444
    :cond_13
    invoke-virtual {p0}, Landroidx/navigation/NavController;->d()Z

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 21
    .line 22
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, v0, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    :goto_0
    return v1
.end method

.method public final e(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavController;->d:Landroid/app/Activity;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_1
    const-string v2, "android.intent.extra.REFERRER"

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_5

    .line 18
    .line 19
    const-string v2, "android.intent.extra.REFERRER_NAME"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p1, 0x0

    .line 46
    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_5
    :goto_1
    return v0
.end method
