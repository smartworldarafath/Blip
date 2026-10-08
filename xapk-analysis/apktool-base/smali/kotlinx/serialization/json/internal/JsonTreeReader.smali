.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlinx/serialization/json/internal/StringJsonLexer;

.field public b:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/StringJsonLexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    instance-of v1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 9
    .line 10
    iget v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->t:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->t:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->r:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->t:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x6

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x7

    .line 37
    const/4 v8, 0x4

    .line 38
    const/4 v9, 0x1

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-ne v3, v9, :cond_3

    .line 42
    .line 43
    iget p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->q:I

    .line 44
    .line 45
    iget-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->p:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->o:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    iget-object v3, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->n:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 50
    .line 51
    iget-object v10, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->m:Lkotlin/DeepRecursiveScope;

    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 57
    .line 58
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, v3, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 62
    .line 63
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v8, :cond_2

    .line 68
    .line 69
    if-ne p1, v7, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    iget-object p0, v3, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 73
    .line 74
    const-string p1, "Expected end of the object or comma"

    .line 75
    .line 76
    invoke-static {p0, p1, v6, v4, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    throw v4

    .line 80
    :cond_2
    move v6, p0

    .line 81
    move-object p0, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 84
    .line 85
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v4

    .line 89
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eq v3, v8, :cond_8

    .line 101
    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object v10, p1

    .line 108
    move p1, p2

    .line 109
    :goto_1
    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 110
    .line 111
    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/4 v3, 0x5

    .line 122
    invoke-virtual {p2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 123
    .line 124
    .line 125
    iput-object v10, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->m:Lkotlin/DeepRecursiveScope;

    .line 126
    .line 127
    iput-object p0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->n:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 128
    .line 129
    iput-object v0, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->o:Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    iput-object p1, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->p:Ljava/lang/String;

    .line 132
    .line 133
    iput v6, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->q:I

    .line 134
    .line 135
    iput v9, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->t:I

    .line 136
    .line 137
    invoke-virtual {v10, v1}, Lkotlin/DeepRecursiveScope;->a(Lkotlin/coroutines/Continuation;)V

    .line 138
    .line 139
    .line 140
    return-object v2

    .line 141
    :cond_5
    move-object v3, p0

    .line 142
    :goto_2
    iget-object p0, v3, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 143
    .line 144
    if-ne p1, v5, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    if-eq p1, v8, :cond_7

    .line 151
    .line 152
    :goto_3
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    .line 153
    .line 154
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    :cond_7
    invoke-static {p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->c(Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    .line 159
    .line 160
    .line 161
    throw v4

    .line 162
    :cond_8
    const-string p0, "Unexpected leading comma"

    .line 163
    .line 164
    invoke-static {v0, p0, v6, v4, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    throw v4
.end method


# virtual methods
.method public final b()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 v4, 0x6

    .line 24
    const/4 v5, 0x0

    .line 25
    if-ne v1, v4, :cond_9

    .line 26
    .line 27
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:I

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:I

    .line 31
    .line 32
    const/16 v2, 0xc8

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    new-instance v0, Lkotlin/DeepRecursiveFunction;

    .line 37
    .line 38
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 39
    .line 40
    invoke-direct {v1, p0, v5}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lkotlin/DeepRecursiveFunction;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/DeepRecursiveKt;->a(Lkotlin/DeepRecursiveFunction;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v6, 0x4

    .line 62
    if-eq v2, v6, :cond_8

    .line 63
    .line 64
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x7

    .line 74
    if-eqz v7, :cond_5

    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v7, 0x5

    .line 81
    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->b()Lkotlinx/serialization/json/JsonElement;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v1, v6, :cond_3

    .line 96
    .line 97
    if-ne v1, v8, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    const-string p0, "Expected end of the object or comma"

    .line 101
    .line 102
    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    throw v5

    .line 106
    :cond_5
    :goto_0
    if-ne v1, v4, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    if-eq v1, v6, :cond_7

    .line 113
    .line 114
    :goto_1
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:I

    .line 120
    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    .line 123
    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:I

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_7
    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->c(Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    .line 127
    .line 128
    .line 129
    throw v5

    .line 130
    :cond_8
    const-string p0, "Unexpected leading comma"

    .line 131
    .line 132
    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    throw v5

    .line 136
    :cond_9
    const/16 v2, 0x8

    .line 137
    .line 138
    if-ne v1, v2, :cond_a

    .line 139
    .line 140
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->c()Lkotlinx/serialization/json/JsonArray;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_a
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->b(B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string v1, "Cannot read Json element because of unexpected "

    .line 150
    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    throw v5
.end method

.method public final c()Lkotlinx/serialization/json/JsonArray;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x4

    .line 14
    if-eq v2, v5, :cond_6

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->r()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/16 v7, 0x9

    .line 26
    .line 27
    if-eqz v6, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->b()Lkotlinx/serialization/json/JsonElement;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v1, v5, :cond_0

    .line 41
    .line 42
    if-ne v1, v7, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v6, v3

    .line 47
    :goto_1
    iget v7, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string p0, "Expected end of the array or comma"

    .line 53
    .line 54
    invoke-static {v0, p0, v7, v4, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    throw v4

    .line 58
    :cond_3
    const/16 p0, 0x8

    .line 59
    .line 60
    if-ne v1, p0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e(B)B

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    if-eq v1, v5, :cond_5

    .line 67
    .line 68
    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_5
    const-string p0, "array"

    .line 75
    .line 76
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->b(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v4

    .line 80
    :cond_6
    const-string p0, "Unexpected leading comma"

    .line 81
    .line 82
    const/4 v1, 0x6

    .line 83
    invoke-static {v0, p0, v3, v4, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    throw v4
.end method

.method public final d(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string v0, "null"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
