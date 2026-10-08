.class public Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Landroidx/navigation/NavigatorProvider;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/navigation/NavigatorProvider$Companion;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/navigation/NavGraphBuilder;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->f:Landroidx/navigation/NavigatorProvider;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->g:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final c()Landroidx/navigation/NavGraph;
    .locals 13

    .line 1
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->a()Landroidx/navigation/NavDestination;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_9

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v5, v2, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 38
    .line 39
    iget-object v6, v2, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 40
    .line 41
    iget-object v7, v6, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 42
    .line 43
    iget-object v8, v3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 44
    .line 45
    iget v9, v8, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 46
    .line 47
    iget-object v10, v8, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    .line 55
    .line 56
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :cond_2
    :goto_1
    iget-object v11, v7, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 61
    .line 62
    const-string v12, "Destination "

    .line 63
    .line 64
    if-eqz v11, :cond_4

    .line 65
    .line 66
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const-string p0, " cannot have the same route as graph "

    .line 74
    .line 75
    invoke-static {v12, v3, p0, v6}, Lk8;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_4
    :goto_2
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 80
    .line 81
    if-eq v9, v7, :cond_8

    .line 82
    .line 83
    invoke-virtual {v5, v9}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Landroidx/navigation/NavDestination;

    .line 88
    .line 89
    if-ne v7, v3, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object v9, v3, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 93
    .line 94
    if-nez v9, :cond_7

    .line 95
    .line 96
    if-eqz v7, :cond_6

    .line 97
    .line 98
    iput-object v4, v7, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 99
    .line 100
    :cond_6
    iput-object v6, v3, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 101
    .line 102
    iget v4, v8, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 103
    .line 104
    invoke-virtual {v5, v4, v3}, Landroidx/collection/SparseArrayCompat;->e(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const-string p0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    .line 109
    .line 110
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :cond_8
    const-string p0, " cannot have the same id as graph "

    .line 115
    .line 116
    invoke-static {v12, v3, p0, v6}, Lk8;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v4

    .line 120
    :cond_9
    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->g:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v1, :cond_b

    .line 123
    .line 124
    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->b:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz p0, :cond_a

    .line 127
    .line 128
    const-string p0, "You must set a start destination route"

    .line 129
    .line 130
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v4

    .line 134
    :cond_a
    const-string p0, "You must set a start destination id"

    .line 135
    .line 136
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v4

    .line 140
    :cond_b
    iget-object p0, v2, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    .line 141
    .line 142
    if-nez v1, :cond_c

    .line 143
    .line 144
    const/4 p0, 0x0

    .line 145
    goto :goto_3

    .line 146
    :cond_c
    iget-object v3, p0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 147
    .line 148
    iget-object v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_e

    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_d

    .line 161
    .line 162
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 163
    .line 164
    const-string p0, "android-app://androidx.navigation/"

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    :goto_3
    iput p0, v2, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 175
    .line 176
    iput-object v1, v2, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_d
    const-string p0, "Cannot have an empty start destination route"

    .line 180
    .line 181
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_e
    const-string v2, "Start destination "

    .line 186
    .line 187
    const-string v3, " cannot use the same route as the graph "

    .line 188
    .line 189
    invoke-static {v2, v1, v3, p0}, Lk8;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    return-object v0
.end method
