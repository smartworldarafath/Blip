.class public final Landroidx/navigation/NavDeepLink;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDeepLink$Builder;,
        Landroidx/navigation/NavDeepLink$ParamQuery;
    }
.end annotation


# static fields
.field public static final m:Lkotlin/text/Regex;

.field public static final n:Lkotlin/text/Regex;

.field public static final o:Lkotlin/text/Regex;

.field public static final p:Lkotlin/text/Regex;

.field public static final q:Lkotlin/text/Regex;

.field public static final r:Lkotlin/text/Regex;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/String;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public g:Z

.field public final h:Lkotlin/Lazy;

.field public final i:Lkotlin/Lazy;

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "^[a-zA-Z]+[+\\w\\-.]*:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/navigation/NavDeepLink;->m:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v1, "\\{(.+?)\\}"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/navigation/NavDeepLink;->n:Lkotlin/text/Regex;

    .line 18
    .line 19
    new-instance v0, Lkotlin/text/Regex;

    .line 20
    .line 21
    const-string v1, "http[s]?://"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/navigation/NavDeepLink;->o:Lkotlin/text/Regex;

    .line 27
    .line 28
    new-instance v0, Lkotlin/text/Regex;

    .line 29
    .line 30
    const-string v1, ".*"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/navigation/NavDeepLink;->p:Lkotlin/text/Regex;

    .line 36
    .line 37
    new-instance v0, Lkotlin/text/Regex;

    .line 38
    .line 39
    const-string v1, "([^/]*?|)"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/navigation/NavDeepLink;->q:Lkotlin/text/Regex;

    .line 45
    .line 46
    new-instance v0, Lkotlin/text/Regex;

    .line 47
    .line 48
    const-string v1, "^[^?#]+\\?([^#]*).*"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/navigation/NavDeepLink;->r:Lkotlin/text/Regex;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v1, Lrb;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Landroidx/navigation/NavDeepLink;->d:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v1, Lrb;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v1, p0, v3}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/navigation/NavDeepLink;->e:Lkotlin/Lazy;

    .line 36
    .line 37
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 38
    .line 39
    new-instance v4, Landroidx/navigation/b;

    .line 40
    .line 41
    invoke-direct {v4, v3, p0}, Landroidx/navigation/b;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput-object v4, p0, Landroidx/navigation/NavDeepLink;->f:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance v4, Lrb;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-direct {v4, p0, v5}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, p0, Landroidx/navigation/NavDeepLink;->h:Lkotlin/Lazy;

    .line 61
    .line 62
    new-instance v4, Lrb;

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    invoke-direct {v4, p0, v5}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, p0, Landroidx/navigation/NavDeepLink;->i:Lkotlin/Lazy;

    .line 73
    .line 74
    new-instance v4, Lrb;

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    invoke-direct {v4, p0, v5}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Landroidx/navigation/NavDeepLink;->j:Lkotlin/Lazy;

    .line 85
    .line 86
    new-instance v1, Lrb;

    .line 87
    .line 88
    const/4 v4, 0x5

    .line 89
    invoke-direct {v1, p0, v4}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Landroidx/navigation/NavDeepLink;->k:Lkotlin/Lazy;

    .line 97
    .line 98
    new-instance v1, Lrb;

    .line 99
    .line 100
    const/4 v4, 0x6

    .line 101
    invoke-direct {v1, p0, v4}, Lrb;-><init>(Landroidx/navigation/NavDeepLink;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 105
    .line 106
    .line 107
    if-nez p1, :cond_0

    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "^"

    .line 113
    .line 114
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v4, Landroidx/navigation/NavDeepLink;->m:Lkotlin/text/Regex;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object v4, v4, Lkotlin/text/Regex;->j:Ljava/util/regex/Pattern;

    .line 123
    .line 124
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_1

    .line 133
    .line 134
    sget-object v4, Landroidx/navigation/NavDeepLink;->o:Lkotlin/text/Regex;

    .line 135
    .line 136
    iget-object v4, v4, Lkotlin/text/Regex;->j:Ljava/util/regex/Pattern;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_1
    new-instance v4, Lkotlin/text/Regex;

    .line 149
    .line 150
    const-string v5, "(\\?|#|$)"

    .line 151
    .line 152
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v4, p1}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-interface {v4}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget v4, v4, Lkotlin/ranges/IntProgression;->j:I

    .line 166
    .line 167
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1, v0, v1}, Landroidx/navigation/NavDeepLink;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Landroidx/navigation/NavDeepLink;->p:Lkotlin/text/Regex;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-object p1, p1, Lkotlin/text/Regex;->j:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_2

    .line 190
    .line 191
    sget-object p1, Landroidx/navigation/NavDeepLink;->q:Lkotlin/text/Regex;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Lkotlin/text/Regex;->j:Ljava/util/regex/Pattern;

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_2

    .line 207
    .line 208
    move v2, v3

    .line 209
    :cond_2
    iput-boolean v2, p0, Landroidx/navigation/NavDeepLink;->l:Z

    .line 210
    .line 211
    const-string p1, "($|(\\?(.)*)|(#(.)*))"

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {p1}, Landroidx/navigation/NavDeepLink;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Landroidx/navigation/NavDeepLink;->c:Ljava/lang/String;

    .line 225
    .line 226
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/navigation/NavDeepLink;->n:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v2, v2, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v2, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 32
    .line 33
    if-le v2, v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v2, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object v1, Landroidx/navigation/NavDeepLink;->q:Lkotlin/text/Regex;

    .line 56
    .line 57
    iget-object v1, v1, Lkotlin/text/Regex;->j:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v1, v1, Lkotlin/ranges/IntProgression;->k:I

    .line 74
    .line 75
    add-int/2addr v1, v3

    .line 76
    invoke-interface {v0}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ge v1, p1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public static f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p3, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p2}, Landroidx/navigation/NavType;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p3, p0, p1, p2}, Landroidx/navigation/NavType;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "\\Q"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, ".*"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "\\E"

    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "\\E.*\\Q"

    .line 21
    .line 22
    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string v0, "\\.\\*"

    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/navigation/NavDeepLink$ParamQuery;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->i:Lkotlin/Lazy;

    .line 49
    .line 50
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final c(Landroid/net/Uri;Ljava/util/LinkedHashMap;)Landroid/os/Bundle;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->d:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlin/text/Regex;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lkotlin/text/Regex;->c(Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    new-array v3, v2, [Lkotlin/Pair;

    .line 32
    .line 33
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, [Lkotlin/Pair;

    .line 38
    .line 39
    invoke-static {v3}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v0, v3, p2}, Landroidx/navigation/NavDeepLink;->d(Lkotlin/text/MatchResult;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->e:Lkotlin/Lazy;

    .line 52
    .line 53
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3, p2}, Landroidx/navigation/NavDeepLink;->e(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->k:Lkotlin/Lazy;

    .line 78
    .line 79
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lkotlin/text/Regex;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->c(Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->i:Lkotlin/Lazy;

    .line 99
    .line 100
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ljava/util/List;

    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    const/16 v4, 0xa

    .line 109
    .line 110
    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    move v4, v2

    .line 122
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    add-int/lit8 v6, v4, 0x1

    .line 133
    .line 134
    if-ltz v4, :cond_6

    .line 135
    .line 136
    check-cast v5, Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4, v6}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_4

    .line 147
    .line 148
    iget-object v4, v4, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move-object v4, v1

    .line 159
    :goto_1
    if-nez v4, :cond_5

    .line 160
    .line 161
    const-string v4, ""

    .line 162
    .line 163
    :cond_5
    invoke-virtual {p2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Landroidx/navigation/NavArgument;

    .line 168
    .line 169
    :try_start_0
    invoke-static {v3, v5, v4, v7}, Landroidx/navigation/NavDeepLink;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move v4, v6

    .line 178
    goto :goto_0

    .line 179
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :catch_0
    :cond_7
    :goto_2
    new-instance p0, Lsb;

    .line 184
    .line 185
    invoke-direct {p0, v2, v3}, Lsb;-><init>(ILandroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p2, p0}, Landroidx/navigation/NavArgumentKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_8

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_8
    return-object v3

    .line 200
    :cond_9
    :goto_3
    return-object v1
.end method

.method public final d(Lkotlin/text/MatchResult;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v4, v2, 0x1

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-ltz v2, :cond_2

    .line 34
    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v4}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget-object v2, v2, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :cond_0
    if-nez v5, :cond_1

    .line 57
    .line 58
    const-string v5, ""

    .line 59
    .line 60
    :cond_1
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 65
    .line 66
    :try_start_0
    invoke-static {p2, v3, v5, v2}, Landroidx/navigation/NavDeepLink;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move v2, v4

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    return v1

    .line 77
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 78
    .line 79
    .line 80
    throw v5

    .line 81
    :cond_3
    const/4 p0, 0x1

    .line 82
    return p0
.end method

.method public final e(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/navigation/NavDeepLink;->f:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_f

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 44
    .line 45
    move-object/from16 v6, p1

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-boolean v7, v0, Landroidx/navigation/NavDeepLink;->g:Z

    .line 52
    .line 53
    if-eqz v7, :cond_0

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_0

    .line 70
    .line 71
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    :cond_0
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    new-array v9, v8, [Lkotlin/Pair;

    .line 79
    .line 80
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, [Lkotlin/Pair;

    .line 85
    .line 86
    invoke-static {v9}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    iget-object v10, v3, Landroidx/navigation/NavDeepLink$ParamQuery;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_3

    .line 101
    .line 102
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    check-cast v11, Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    check-cast v13, Landroidx/navigation/NavArgument;

    .line 113
    .line 114
    if-eqz v13, :cond_2

    .line 115
    .line 116
    iget-object v12, v13, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v12, 0x0

    .line 120
    :goto_2
    instance-of v14, v12, Landroidx/navigation/CollectionNavType;

    .line 121
    .line 122
    if-eqz v14, :cond_1

    .line 123
    .line 124
    iget-boolean v13, v13, Landroidx/navigation/NavArgument;->b:Z

    .line 125
    .line 126
    if-nez v13, :cond_1

    .line 127
    .line 128
    check-cast v12, Landroidx/navigation/CollectionNavType;

    .line 129
    .line 130
    invoke-virtual {v12}, Landroidx/navigation/CollectionNavType;->f()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-virtual {v12, v9, v11, v13}, Landroidx/navigation/NavType;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_e

    .line 147
    .line 148
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    check-cast v10, Ljava/lang/String;

    .line 153
    .line 154
    iget-object v11, v3, Landroidx/navigation/NavDeepLink$ParamQuery;->a:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v11, :cond_5

    .line 157
    .line 158
    new-instance v13, Lkotlin/text/Regex;

    .line 159
    .line 160
    invoke-direct {v13, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v10}, Lkotlin/text/Regex;->c(Ljava/lang/String;)Lkotlin/text/MatchResult;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    const/4 v10, 0x0

    .line 169
    :goto_3
    if-nez v10, :cond_6

    .line 170
    .line 171
    return v8

    .line 172
    :cond_6
    iget-object v11, v3, Landroidx/navigation/NavDeepLink$ParamQuery;->b:Ljava/util/ArrayList;

    .line 173
    .line 174
    new-instance v13, Ljava/util/ArrayList;

    .line 175
    .line 176
    const/16 v14, 0xa

    .line 177
    .line 178
    invoke-static {v11, v14}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    move v14, v8

    .line 190
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    if-eqz v15, :cond_4

    .line 195
    .line 196
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    const/16 v16, 0x1

    .line 201
    .line 202
    add-int/lit8 v4, v14, 0x1

    .line 203
    .line 204
    if-ltz v14, :cond_d

    .line 205
    .line 206
    check-cast v15, Ljava/lang/String;

    .line 207
    .line 208
    invoke-interface {v10}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    invoke-virtual {v14, v4}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    if-eqz v14, :cond_7

    .line 217
    .line 218
    iget-object v14, v14, Lkotlin/text/MatchGroup;->a:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_7
    const/4 v14, 0x0

    .line 222
    :goto_5
    if-nez v14, :cond_8

    .line 223
    .line 224
    const-string v14, ""

    .line 225
    .line 226
    :cond_8
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v17

    .line 230
    move-object/from16 v8, v17

    .line 231
    .line 232
    check-cast v8, Landroidx/navigation/NavArgument;

    .line 233
    .line 234
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v17

    .line 241
    if-nez v17, :cond_9

    .line 242
    .line 243
    invoke-static {v9, v15, v14, v8}, Landroidx/navigation/NavDeepLink;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 244
    .line 245
    .line 246
    move-object v8, v7

    .line 247
    const/16 v17, 0x0

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :catch_0
    const/16 v17, 0x0

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_9
    invoke-virtual {v9, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v17

    .line 257
    if-nez v17, :cond_a

    .line 258
    .line 259
    move/from16 v8, v16

    .line 260
    .line 261
    const/16 v17, 0x0

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_a
    if-eqz v8, :cond_c

    .line 265
    .line 266
    iget-object v8, v8, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .line 268
    const/16 v17, 0x0

    .line 269
    .line 270
    :try_start_1
    invoke-virtual {v8, v15, v9}, Landroidx/navigation/NavType;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-virtual {v9, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v18

    .line 278
    if-eqz v18, :cond_b

    .line 279
    .line 280
    invoke-virtual {v8, v12, v14}, Landroidx/navigation/NavType;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    invoke-virtual {v8, v9, v15, v12}, Landroidx/navigation/NavType;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    const-string v12, "There is no previous value in this savedState."

    .line 291
    .line 292
    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v8

    .line 296
    :cond_c
    const/16 v17, 0x0

    .line 297
    .line 298
    :goto_6
    const/4 v8, 0x0

    .line 299
    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    goto :goto_9

    .line 304
    :catch_1
    :goto_8
    move-object v8, v7

    .line 305
    :goto_9
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move v14, v4

    .line 309
    const/4 v8, 0x0

    .line 310
    goto :goto_4

    .line 311
    :cond_d
    const/16 v17, 0x0

    .line 312
    .line 313
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 314
    .line 315
    .line 316
    throw v17

    .line 317
    :cond_e
    move-object/from16 v4, p2

    .line 318
    .line 319
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_f
    const/16 v16, 0x1

    .line 325
    .line 326
    return v16
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/navigation/NavDeepLink;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Landroidx/navigation/NavDeepLink;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavDeepLink;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    mul-int/lit16 p0, p0, 0x3c1

    .line 12
    .line 13
    return p0
.end method
