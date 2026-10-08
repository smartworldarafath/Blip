.class public abstract Lio/sentry/android/core/anr/AnrCulpritIdentifier;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    const-string v1, "java.lang"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const-string v1, "java.util"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const-string v1, "android.app"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-string v1, "android.os.Handler"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-string v1, "android.os.Looper"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-string v1, "android.view"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string v1, "android.widget"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string v1, "com.android.internal"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string v1, "com.google.android"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string v1, "kotlin"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const-string v1, "kotlinx.coroutines"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static a(Ljava/util/List;)Lio/sentry/android/core/anr/AggregatedStackTrace;
    .locals 12

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 29
    .line 30
    iget-object v2, v1, Lio/sentry/android/core/anr/AnrStackTrace;->j:[Ljava/lang/StackTraceElement;

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x2

    .line 34
    if-ge v3, v4, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    array-length v3, v2

    .line 38
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    move v7, v3

    .line 42
    :goto_1
    if-ltz v7, :cond_1

    .line 43
    .line 44
    aget-object v3, v2, v7

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v5, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    :goto_2
    array-length v3, v2

    .line 78
    sub-int/2addr v3, v7

    .line 79
    int-to-float v5, v4

    .line 80
    int-to-float v3, v3

    .line 81
    div-float v11, v5, v3

    .line 82
    .line 83
    new-instance v3, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;

    .line 84
    .line 85
    array-length v5, v2

    .line 86
    add-int/lit8 v5, v5, -0x1

    .line 87
    .line 88
    invoke-direct {v3, v2, v7, v5}, Lio/sentry/android/core/anr/AnrCulpritIdentifier$StackTraceKey;-><init>([Ljava/lang/StackTraceElement;II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 96
    .line 97
    if-nez v5, :cond_5

    .line 98
    .line 99
    new-instance v5, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 100
    .line 101
    iget-object v6, v1, Lio/sentry/android/core/anr/AnrStackTrace;->j:[Ljava/lang/StackTraceElement;

    .line 102
    .line 103
    array-length v8, v6

    .line 104
    add-int/lit8 v8, v8, -0x1

    .line 105
    .line 106
    iget-wide v9, v1, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 107
    .line 108
    invoke-direct/range {v5 .. v11}, Lio/sentry/android/core/anr/AggregatedStackTrace;-><init>([Ljava/lang/StackTraceElement;IIJF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    iget-wide v8, v1, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 116
    .line 117
    iget-wide v10, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->g:J

    .line 118
    .line 119
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    iput-wide v10, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->g:J

    .line 124
    .line 125
    iget-wide v10, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->h:J

    .line 126
    .line 127
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    iput-wide v8, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->h:J

    .line 132
    .line 133
    iget v3, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->f:I

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    iput v3, v5, Lio/sentry/android/core/anr/AggregatedStackTrace;->f:I

    .line 138
    .line 139
    :goto_3
    add-int/lit8 v7, v7, -0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_7

    .line 147
    .line 148
    :goto_4
    const/4 p0, 0x0

    .line 149
    return-object p0

    .line 150
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    new-instance v0, Lv1;

    .line 155
    .line 156
    const/16 v1, 0x9

    .line 157
    .line 158
    invoke-direct {v0, v1}, Lv1;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 166
    .line 167
    return-object p0
.end method
