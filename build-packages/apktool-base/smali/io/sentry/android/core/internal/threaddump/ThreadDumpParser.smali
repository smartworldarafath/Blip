.class public Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lio/sentry/SentryOptions;

.field public final b:Z

.field public final c:Lio/sentry/SentryStackTraceFactory;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->f:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\"(.*)\" (.*) ?sysTid=(\\d+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->g:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, " *(?:native: )?#(\\d+) \\S+ ([0-9a-fA-F]+)\\s+((.*?)(?:\\s+\\(deleted\\))?(?:\\s+\\(offset (.*?)\\))?)(?:\\s+\\((?:\\?\\?\\?|(.*?)(?:\\+(\\d+))?)\\))?(?:\\s+\\(BuildId: (.*?)\\))?"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->h:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->i:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->j:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, " *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->k:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, " *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->l:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v0, " *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->m:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->n:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))"

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->o:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    const-string v0, " *- waiting to lock an unknown object"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->p:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    const-string v0, "\\s+"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->q:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a:Lio/sentry/SentryOptions;

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->b:Z

    .line 7
    .line 8
    new-instance p2, Lio/sentry/SentryStackTraceFactory;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c:Lio/sentry/SentryStackTraceFactory;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method

.method public static a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->s:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p1, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lio/sentry/SentryLockReason;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget v2, v1, Lio/sentry/SentryLockReason;->j:I

    .line 21
    .line 22
    iget p1, p1, Lio/sentry/SentryLockReason;->j:I

    .line 23
    .line 24
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, v1, Lio/sentry/SentryLockReason;->j:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p1, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Lio/sentry/SentryLockReason;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v3, p1, Lio/sentry/SentryLockReason;->j:I

    .line 39
    .line 40
    iput v3, v2, Lio/sentry/SentryLockReason;->j:I

    .line 41
    .line 42
    iput-object v1, v2, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v3, v2, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, v2, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lio/sentry/SentryLockReason;->n:Ljava/lang/Long;

    .line 53
    .line 54
    iput-object v3, v2, Lio/sentry/SentryLockReason;->n:Ljava/lang/Long;

    .line 55
    .line 56
    iget-object p1, p1, Lio/sentry/SentryLockReason;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, v2, Lio/sentry/SentryLockReason;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/SentryThread;->s:Ljava/util/Map;

    .line 68
    .line 69
    return-void
.end method

.method public static b(Ljava/util/regex/Matcher;I)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method


# virtual methods
.method public final d(Lio/sentry/android/core/internal/threaddump/Lines;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lio/sentry/android/core/internal/threaddump/Lines;->b:I

    .line 6
    .line 7
    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->f:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    sget-object v6, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->g:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    :goto_0
    iget v8, v1, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 22
    .line 23
    if-ge v8, v2, :cond_25

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/sentry/android/core/internal/threaddump/Lines;->a()Lio/sentry/android/core/internal/threaddump/Line;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const/4 v9, 0x0

    .line 30
    const-string v10, "Internal error while parsing thread dump."

    .line 31
    .line 32
    iget-object v11, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a:Lio/sentry/SentryOptions;

    .line 33
    .line 34
    if-nez v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 41
    .line 42
    new-array v2, v9, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {v0, v1, v10, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v8, v8, Lio/sentry/android/core/internal/threaddump/Line;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v5, v8}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-nez v12, :cond_2

    .line 55
    .line 56
    invoke-static {v7, v8}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move/from16 v30, v2

    .line 64
    .line 65
    move-object/from16 v20, v3

    .line 66
    .line 67
    move-object/from16 v27, v4

    .line 68
    .line 69
    move-object/from16 v21, v5

    .line 70
    .line 71
    move-object/from16 v22, v6

    .line 72
    .line 73
    move-object/from16 v23, v7

    .line 74
    .line 75
    goto/16 :goto_14

    .line 76
    .line 77
    :cond_2
    :goto_1
    iget v8, v1, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 78
    .line 79
    const/4 v12, 0x1

    .line 80
    sub-int/2addr v8, v12

    .line 81
    iput v8, v1, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 82
    .line 83
    new-instance v8, Lio/sentry/protocol/SentryThread;

    .line 84
    .line 85
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    iget v15, v1, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 97
    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    if-ge v15, v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1}, Lio/sentry/android/core/internal/threaddump/Lines;->a()Lio/sentry/android/core/internal/threaddump/Line;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    if-nez v15, :cond_4

    .line 107
    .line 108
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    sget-object v11, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 113
    .line 114
    new-array v9, v9, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-interface {v8, v11, v10, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_2
    move/from16 v30, v2

    .line 120
    .line 121
    move-object/from16 v20, v3

    .line 122
    .line 123
    move-object/from16 v27, v4

    .line 124
    .line 125
    move-object/from16 v21, v5

    .line 126
    .line 127
    move-object/from16 v22, v6

    .line 128
    .line 129
    move-object/from16 v23, v7

    .line 130
    .line 131
    move-object/from16 v8, v16

    .line 132
    .line 133
    goto/16 :goto_13

    .line 134
    .line 135
    :cond_4
    iget-object v15, v15, Lio/sentry/android/core/internal/threaddump/Line;->a:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v13, v15}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    const-string v12, "No thread id in the dump, skipping thread."

    .line 142
    .line 143
    const/4 v9, 0x4

    .line 144
    if-eqz v17, :cond_7

    .line 145
    .line 146
    invoke-static {v13, v9}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->b(Ljava/util/regex/Matcher;I)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-nez v14, :cond_5

    .line 151
    .line 152
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    new-array v10, v10, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-interface {v8, v9, v12, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    iput-object v14, v8, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 166
    .line 167
    const/4 v12, 0x1

    .line 168
    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    iput-object v14, v8, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 173
    .line 174
    const/4 v12, 0x5

    .line 175
    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    if-eqz v13, :cond_9

    .line 180
    .line 181
    const-string v12, " "

    .line 182
    .line 183
    invoke-virtual {v13, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_6

    .line 188
    .line 189
    const/16 v12, 0x20

    .line 190
    .line 191
    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(I)I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    const/4 v14, 0x0

    .line 196
    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    iput-object v12, v8, Lio/sentry/protocol/SentryThread;->m:Ljava/lang/String;

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    iput-object v13, v8, Lio/sentry/protocol/SentryThread;->m:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    invoke-static {v14, v15}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    if-eqz v13, :cond_9

    .line 211
    .line 212
    const/4 v13, 0x3

    .line 213
    invoke-static {v14, v13}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->b(Ljava/util/regex/Matcher;I)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    if-nez v15, :cond_8

    .line 218
    .line 219
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 224
    .line 225
    const/4 v14, 0x0

    .line 226
    new-array v10, v14, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-interface {v8, v9, v12, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_8
    iput-object v15, v8, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 233
    .line 234
    const/4 v12, 0x1

    .line 235
    invoke-virtual {v14, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    iput-object v13, v8, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 240
    .line 241
    :cond_9
    :goto_3
    iget-object v12, v8, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v12, :cond_b

    .line 244
    .line 245
    const-string v13, "main"

    .line 246
    .line 247
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    iput-object v13, v8, Lio/sentry/protocol/SentryThread;->q:Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    iput-object v13, v8, Lio/sentry/protocol/SentryThread;->n:Ljava/lang/Boolean;

    .line 262
    .line 263
    if-eqz v12, :cond_a

    .line 264
    .line 265
    iget-boolean v12, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->b:Z

    .line 266
    .line 267
    if-nez v12, :cond_a

    .line 268
    .line 269
    const/4 v12, 0x1

    .line 270
    goto :goto_4

    .line 271
    :cond_a
    const/4 v12, 0x0

    .line 272
    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    iput-object v12, v8, Lio/sentry/protocol/SentryThread;->o:Ljava/lang/Boolean;

    .line 277
    .line 278
    :cond_b
    iget-object v12, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c:Lio/sentry/SentryStackTraceFactory;

    .line 279
    .line 280
    iget-object v12, v12, Lio/sentry/SentryStackTraceFactory;->a:Lio/sentry/SentryOptions;

    .line 281
    .line 282
    new-instance v13, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    sget-object v14, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->h:Ljava/util/regex/Pattern;

    .line 288
    .line 289
    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 290
    .line 291
    .line 292
    move-result-object v14

    .line 293
    sget-object v15, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->i:Ljava/util/regex/Pattern;

    .line 294
    .line 295
    invoke-virtual {v15, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    sget-object v9, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->j:Ljava/util/regex/Pattern;

    .line 300
    .line 301
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    move-object/from16 v20, v3

    .line 306
    .line 307
    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->k:Ljava/util/regex/Pattern;

    .line 308
    .line 309
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    move-object/from16 v21, v5

    .line 314
    .line 315
    sget-object v5, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->m:Ljava/util/regex/Pattern;

    .line 316
    .line 317
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    move-object/from16 v22, v6

    .line 322
    .line 323
    sget-object v6, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->l:Ljava/util/regex/Pattern;

    .line 324
    .line 325
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    move-object/from16 v23, v7

    .line 330
    .line 331
    sget-object v7, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->o:Ljava/util/regex/Pattern;

    .line 332
    .line 333
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    move-object/from16 v24, v11

    .line 338
    .line 339
    sget-object v11, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->n:Ljava/util/regex/Pattern;

    .line 340
    .line 341
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    move-object/from16 v25, v12

    .line 346
    .line 347
    sget-object v12, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->p:Ljava/util/regex/Pattern;

    .line 348
    .line 349
    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 350
    .line 351
    .line 352
    move-result-object v12

    .line 353
    move-object/from16 v26, v12

    .line 354
    .line 355
    sget-object v12, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->q:Ljava/util/regex/Pattern;

    .line 356
    .line 357
    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    move-object/from16 v27, v4

    .line 362
    .line 363
    move-object/from16 v28, v12

    .line 364
    .line 365
    move-object/from16 v4, v16

    .line 366
    .line 367
    :goto_5
    iget v12, v1, Lio/sentry/android/core/internal/threaddump/Lines;->c:I

    .line 368
    .line 369
    if-ge v12, v2, :cond_c

    .line 370
    .line 371
    invoke-virtual {v1}, Lio/sentry/android/core/internal/threaddump/Lines;->a()Lio/sentry/android/core/internal/threaddump/Line;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    if-nez v12, :cond_d

    .line 376
    .line 377
    invoke-virtual/range {v24 .. v24}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 382
    .line 383
    const/4 v5, 0x0

    .line 384
    new-array v5, v5, [Ljava/lang/Object;

    .line 385
    .line 386
    invoke-interface {v3, v4, v10, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :cond_c
    move/from16 v30, v2

    .line 390
    .line 391
    goto/16 :goto_12

    .line 392
    .line 393
    :cond_d
    const/16 v19, 0x0

    .line 394
    .line 395
    iget-object v12, v12, Lio/sentry/android/core/internal/threaddump/Line;->a:Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {v15, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v29

    .line 401
    const-string v1, "."

    .line 402
    .line 403
    move/from16 v30, v2

    .line 404
    .line 405
    const/4 v2, 0x2

    .line 406
    if-eqz v29, :cond_11

    .line 407
    .line 408
    new-instance v4, Lio/sentry/protocol/SentryStackFrame;

    .line 409
    .line 410
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 411
    .line 412
    .line 413
    move-object/from16 v29, v10

    .line 414
    .line 415
    const/4 v12, 0x1

    .line 416
    invoke-virtual {v15, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v10, v1, v2}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    iput-object v1, v4, Lio/sentry/protocol/SentryStackFrame;->o:Ljava/lang/String;

    .line 429
    .line 430
    const/4 v2, 0x3

    .line 431
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    iput-object v10, v4, Lio/sentry/protocol/SentryStackFrame;->n:Ljava/lang/String;

    .line 436
    .line 437
    const/4 v2, 0x4

    .line 438
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    iput-object v10, v4, Lio/sentry/protocol/SentryStackFrame;->m:Ljava/lang/String;

    .line 443
    .line 444
    const/4 v10, 0x5

    .line 445
    invoke-virtual {v15, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    if-eqz v2, :cond_f

    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    if-nez v12, :cond_e

    .line 456
    .line 457
    goto :goto_6

    .line 458
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    if-ltz v2, :cond_f

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_f
    :goto_6
    move-object/from16 v12, v16

    .line 470
    .line 471
    :goto_7
    iput-object v12, v4, Lio/sentry/protocol/SentryStackFrame;->p:Ljava/lang/Integer;

    .line 472
    .line 473
    invoke-virtual/range {v25 .. v25}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual/range {v25 .. v25}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v12

    .line 481
    invoke-static {v1, v2, v12}, Lio/sentry/SentryStackTraceFactory;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iput-object v1, v4, Lio/sentry/protocol/SentryStackFrame;->t:Ljava/lang/Boolean;

    .line 486
    .line 487
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-object/from16 v18, v15

    .line 491
    .line 492
    :cond_10
    :goto_8
    move-object/from16 v0, v26

    .line 493
    .line 494
    move-object/from16 v10, v28

    .line 495
    .line 496
    const/4 v1, 0x1

    .line 497
    const/4 v2, 0x3

    .line 498
    const/4 v15, 0x4

    .line 499
    goto/16 :goto_11

    .line 500
    .line 501
    :cond_11
    move-object/from16 v29, v10

    .line 502
    .line 503
    const/4 v10, 0x5

    .line 504
    invoke-static {v14, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result v18

    .line 508
    const/16 v10, 0x8

    .line 509
    .line 510
    if-eqz v18, :cond_17

    .line 511
    .line 512
    new-instance v1, Lio/sentry/protocol/SentryStackFrame;

    .line 513
    .line 514
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 515
    .line 516
    .line 517
    const/4 v4, 0x3

    .line 518
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v12

    .line 522
    iput-object v12, v1, Lio/sentry/protocol/SentryStackFrame;->u:Ljava/lang/String;

    .line 523
    .line 524
    const/4 v4, 0x6

    .line 525
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    iput-object v4, v1, Lio/sentry/protocol/SentryStackFrame;->n:Ljava/lang/String;

    .line 530
    .line 531
    const/4 v4, 0x7

    .line 532
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    if-eqz v4, :cond_13

    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-nez v12, :cond_12

    .line 543
    .line 544
    goto :goto_9

    .line 545
    :cond_12
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    goto :goto_a

    .line 554
    :cond_13
    :goto_9
    move-object/from16 v4, v16

    .line 555
    .line 556
    :goto_a
    iput-object v4, v1, Lio/sentry/protocol/SentryStackFrame;->p:Ljava/lang/Integer;

    .line 557
    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    const-string v12, "0x"

    .line 561
    .line 562
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    iput-object v2, v1, Lio/sentry/protocol/SentryStackFrame;->z:Ljava/lang/String;

    .line 577
    .line 578
    const-string v2, "native"

    .line 579
    .line 580
    iput-object v2, v1, Lio/sentry/protocol/SentryStackFrame;->w:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    if-nez v2, :cond_14

    .line 587
    .line 588
    move-object/from16 v4, v16

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_14
    invoke-static {v2}, Lio/sentry/android/core/internal/util/NativeEventUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    :goto_b
    if-eqz v4, :cond_16

    .line 596
    .line 597
    iget-object v10, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->d:Ljava/util/HashMap;

    .line 598
    .line 599
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v12

    .line 603
    if-nez v12, :cond_15

    .line 604
    .line 605
    new-instance v12, Lio/sentry/protocol/DebugImage;

    .line 606
    .line 607
    invoke-direct {v12}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v12, v4}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    move-object/from16 v18, v15

    .line 614
    .line 615
    const-string v15, "elf"

    .line 616
    .line 617
    invoke-virtual {v12, v15}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const/4 v15, 0x4

    .line 621
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v12, v0}, Lio/sentry/protocol/DebugImage;->setCodeFile(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v12, v2}, Lio/sentry/protocol/DebugImage;->setCodeId(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v10, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    goto :goto_c

    .line 635
    :cond_15
    move-object/from16 v18, v15

    .line 636
    .line 637
    :goto_c
    const-string v0, "rel:"

    .line 638
    .line 639
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    iput-object v0, v1, Lio/sentry/protocol/SentryStackFrame;->A:Ljava/lang/String;

    .line 644
    .line 645
    goto :goto_d

    .line 646
    :cond_16
    move-object/from16 v18, v15

    .line 647
    .line 648
    :goto_d
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-object/from16 v4, v16

    .line 652
    .line 653
    goto/16 :goto_8

    .line 654
    .line 655
    :cond_17
    move-object/from16 v18, v15

    .line 656
    .line 657
    invoke-static {v9, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_18

    .line 662
    .line 663
    new-instance v4, Lio/sentry/protocol/SentryStackFrame;

    .line 664
    .line 665
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 666
    .line 667
    .line 668
    const/4 v12, 0x1

    .line 669
    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-static {v0, v1, v2}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->o:Ljava/lang/String;

    .line 682
    .line 683
    const/4 v2, 0x3

    .line 684
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    iput-object v1, v4, Lio/sentry/protocol/SentryStackFrame;->n:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual/range {v25 .. v25}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual/range {v25 .. v25}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-static {v0, v1, v2}, Lio/sentry/SentryStackTraceFactory;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->t:Ljava/lang/Boolean;

    .line 703
    .line 704
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 705
    .line 706
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->v:Ljava/lang/Boolean;

    .line 707
    .line 708
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    goto/16 :goto_8

    .line 712
    .line 713
    :cond_18
    invoke-static {v3, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_19

    .line 718
    .line 719
    if-eqz v4, :cond_10

    .line 720
    .line 721
    new-instance v0, Lio/sentry/SentryLockReason;

    .line 722
    .line 723
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 724
    .line 725
    .line 726
    const/4 v12, 0x1

    .line 727
    iput v12, v0, Lio/sentry/SentryLockReason;->j:I

    .line 728
    .line 729
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iput-object v1, v0, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    iput-object v1, v0, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 740
    .line 741
    const/4 v2, 0x3

    .line 742
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    iput-object v1, v0, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 747
    .line 748
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 749
    .line 750
    invoke-static {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_8

    .line 754
    .line 755
    :cond_19
    invoke-static {v5, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    if-eqz v0, :cond_1a

    .line 760
    .line 761
    if-eqz v4, :cond_10

    .line 762
    .line 763
    new-instance v0, Lio/sentry/SentryLockReason;

    .line 764
    .line 765
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 766
    .line 767
    .line 768
    iput v2, v0, Lio/sentry/SentryLockReason;->j:I

    .line 769
    .line 770
    const/4 v12, 0x1

    .line 771
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    iput-object v1, v0, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 776
    .line 777
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    iput-object v1, v0, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 782
    .line 783
    const/4 v2, 0x3

    .line 784
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    iput-object v1, v0, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 789
    .line 790
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 791
    .line 792
    invoke-static {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 793
    .line 794
    .line 795
    goto/16 :goto_8

    .line 796
    .line 797
    :cond_1a
    invoke-static {v6, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-eqz v0, :cond_1b

    .line 802
    .line 803
    if-eqz v4, :cond_10

    .line 804
    .line 805
    new-instance v0, Lio/sentry/SentryLockReason;

    .line 806
    .line 807
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 808
    .line 809
    .line 810
    const/4 v15, 0x4

    .line 811
    iput v15, v0, Lio/sentry/SentryLockReason;->j:I

    .line 812
    .line 813
    const/4 v12, 0x1

    .line 814
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    iput-object v1, v0, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 819
    .line 820
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    iput-object v1, v0, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 825
    .line 826
    const/4 v2, 0x3

    .line 827
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    iput-object v1, v0, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 832
    .line 833
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 834
    .line 835
    invoke-static {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_8

    .line 839
    .line 840
    :cond_1b
    invoke-static {v7, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_1d

    .line 845
    .line 846
    if-eqz v4, :cond_1c

    .line 847
    .line 848
    new-instance v0, Lio/sentry/SentryLockReason;

    .line 849
    .line 850
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 851
    .line 852
    .line 853
    iput v10, v0, Lio/sentry/SentryLockReason;->j:I

    .line 854
    .line 855
    const/4 v12, 0x1

    .line 856
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    iput-object v1, v0, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 861
    .line 862
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    iput-object v1, v0, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 867
    .line 868
    const/4 v2, 0x3

    .line 869
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    iput-object v1, v0, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 874
    .line 875
    const/4 v15, 0x4

    .line 876
    invoke-static {v7, v15}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->b(Ljava/util/regex/Matcher;I)Ljava/lang/Long;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    iput-object v1, v0, Lio/sentry/SentryLockReason;->n:Ljava/lang/Long;

    .line 881
    .line 882
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 883
    .line 884
    invoke-static {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 885
    .line 886
    .line 887
    :goto_e
    move-object/from16 v0, v26

    .line 888
    .line 889
    move-object/from16 v10, v28

    .line 890
    .line 891
    const/4 v1, 0x1

    .line 892
    const/4 v2, 0x3

    .line 893
    goto :goto_11

    .line 894
    :cond_1c
    const/4 v15, 0x4

    .line 895
    goto :goto_e

    .line 896
    :cond_1d
    const/4 v15, 0x4

    .line 897
    invoke-static {v11, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_20

    .line 902
    .line 903
    if-eqz v4, :cond_1f

    .line 904
    .line 905
    new-instance v0, Lio/sentry/SentryLockReason;

    .line 906
    .line 907
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 908
    .line 909
    .line 910
    iput v10, v0, Lio/sentry/SentryLockReason;->j:I

    .line 911
    .line 912
    const/4 v1, 0x1

    .line 913
    invoke-virtual {v11, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v10

    .line 917
    iput-object v10, v0, Lio/sentry/SentryLockReason;->k:Ljava/lang/String;

    .line 918
    .line 919
    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    iput-object v2, v0, Lio/sentry/SentryLockReason;->l:Ljava/lang/String;

    .line 924
    .line 925
    const/4 v2, 0x3

    .line 926
    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v10

    .line 930
    iput-object v10, v0, Lio/sentry/SentryLockReason;->m:Ljava/lang/String;

    .line 931
    .line 932
    iput-object v0, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 933
    .line 934
    invoke-static {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 935
    .line 936
    .line 937
    :goto_f
    move-object/from16 v0, v26

    .line 938
    .line 939
    :cond_1e
    :goto_10
    move-object/from16 v10, v28

    .line 940
    .line 941
    goto :goto_11

    .line 942
    :cond_1f
    const/4 v1, 0x1

    .line 943
    const/4 v2, 0x3

    .line 944
    goto :goto_f

    .line 945
    :cond_20
    move-object/from16 v0, v26

    .line 946
    .line 947
    const/4 v1, 0x1

    .line 948
    const/4 v2, 0x3

    .line 949
    invoke-static {v0, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 950
    .line 951
    .line 952
    move-result v17

    .line 953
    if-eqz v17, :cond_21

    .line 954
    .line 955
    if-eqz v4, :cond_1e

    .line 956
    .line 957
    new-instance v12, Lio/sentry/SentryLockReason;

    .line 958
    .line 959
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 960
    .line 961
    .line 962
    iput v10, v12, Lio/sentry/SentryLockReason;->j:I

    .line 963
    .line 964
    iput-object v12, v4, Lio/sentry/protocol/SentryStackFrame;->E:Lio/sentry/SentryLockReason;

    .line 965
    .line 966
    invoke-static {v8, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->a(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    .line 967
    .line 968
    .line 969
    goto :goto_10

    .line 970
    :cond_21
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 971
    .line 972
    .line 973
    move-result v10

    .line 974
    if-eqz v10, :cond_23

    .line 975
    .line 976
    move-object/from16 v10, v28

    .line 977
    .line 978
    invoke-static {v10, v12}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->c(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    .line 979
    .line 980
    .line 981
    move-result v12

    .line 982
    if-eqz v12, :cond_22

    .line 983
    .line 984
    goto :goto_12

    .line 985
    :cond_22
    :goto_11
    move-object/from16 v1, p1

    .line 986
    .line 987
    move-object/from16 v26, v0

    .line 988
    .line 989
    move-object/from16 v28, v10

    .line 990
    .line 991
    move-object/from16 v15, v18

    .line 992
    .line 993
    move-object/from16 v10, v29

    .line 994
    .line 995
    move/from16 v2, v30

    .line 996
    .line 997
    move-object/from16 v0, p0

    .line 998
    .line 999
    goto/16 :goto_5

    .line 1000
    .line 1001
    :cond_23
    :goto_12
    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1002
    .line 1003
    .line 1004
    new-instance v0, Lio/sentry/protocol/SentryStackTrace;

    .line 1005
    .line 1006
    invoke-direct {v0, v13}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    .line 1007
    .line 1008
    .line 1009
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1010
    .line 1011
    iput-object v1, v0, Lio/sentry/protocol/SentryStackTrace;->l:Ljava/lang/Boolean;

    .line 1012
    .line 1013
    iput-object v0, v8, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 1014
    .line 1015
    :goto_13
    move-object/from16 v0, p0

    .line 1016
    .line 1017
    if-eqz v8, :cond_24

    .line 1018
    .line 1019
    iget-object v1, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->e:Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    :cond_24
    :goto_14
    move-object/from16 v1, p1

    .line 1025
    .line 1026
    move-object/from16 v3, v20

    .line 1027
    .line 1028
    move-object/from16 v5, v21

    .line 1029
    .line 1030
    move-object/from16 v6, v22

    .line 1031
    .line 1032
    move-object/from16 v7, v23

    .line 1033
    .line 1034
    move-object/from16 v4, v27

    .line 1035
    .line 1036
    move/from16 v2, v30

    .line 1037
    .line 1038
    goto/16 :goto_0

    .line 1039
    .line 1040
    :cond_25
    return-void
.end method
