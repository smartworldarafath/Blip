.class public final Landroidx/compose/runtime/Recomposer$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    :cond_0
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 13
    .line 14
    iget-object v3, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->l:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 15
    .line 16
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    iget-object v5, v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v4, v4, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->b:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v6, v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->j:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v8, v7

    .line 40
    :goto_0
    invoke-virtual {v6, v8, v7, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;->v(IILjava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-ne v6, v7, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-nez v7, :cond_4

    .line 48
    .line 49
    sget-object v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->l:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    new-instance v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 53
    .line 54
    iget v3, v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->k:I

    .line 55
    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    invoke-direct {v6, v7, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V

    .line 59
    .line 60
    .line 61
    move-object v3, v6

    .line 62
    :goto_1
    sget-object v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->a:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    .line 63
    .line 64
    if-eq v5, v6, :cond_5

    .line 65
    .line 66
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 74
    .line 75
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 76
    .line 77
    iget-object v7, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->a:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-direct {v8, v7, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v5, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->a(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_5
    if-eq v4, v6, :cond_6

    .line 87
    .line 88
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    check-cast v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 96
    .line 97
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 98
    .line 99
    iget-object v7, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->b:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-direct {v8, v5, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->a(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_6
    if-eq v5, v6, :cond_7

    .line 109
    .line 110
    iget-object v7, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->j:Ljava/lang/Object;

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    move-object v7, v4

    .line 114
    :goto_2
    if-eq v4, v6, :cond_8

    .line 115
    .line 116
    iget-object v5, v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->k:Ljava/lang/Object;

    .line 117
    .line 118
    :cond_8
    new-instance v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 119
    .line 120
    invoke-direct {v2, v7, v5, v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    if-eq v1, v2, :cond_9

    .line 124
    .line 125
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    :cond_9
    return-void
.end method
