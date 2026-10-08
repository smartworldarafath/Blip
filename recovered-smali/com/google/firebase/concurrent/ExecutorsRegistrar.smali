.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/components/Lazy;

.field public static final b:Lcom/google/firebase/components/Lazy;

.field public static final c:Lcom/google/firebase/components/Lazy;

.field public static final d:Lcom/google/firebase/components/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/components/Lazy;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/concurrent/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/google/firebase/concurrent/g;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lcom/google/firebase/components/Lazy;

    .line 13
    .line 14
    new-instance v0, Lcom/google/firebase/components/Lazy;

    .line 15
    .line 16
    new-instance v1, Lcom/google/firebase/concurrent/g;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2}, Lcom/google/firebase/concurrent/g;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lcom/google/firebase/components/Lazy;

    .line 26
    .line 27
    new-instance v0, Lcom/google/firebase/components/Lazy;

    .line 28
    .line 29
    new-instance v1, Lcom/google/firebase/concurrent/g;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-direct {v1, v2}, Lcom/google/firebase/concurrent/g;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lcom/google/firebase/components/Lazy;

    .line 39
    .line 40
    new-instance v0, Lcom/google/firebase/components/Lazy;

    .line 41
    .line 42
    new-instance v1, Lcom/google/firebase/concurrent/g;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-direct {v1, v2}, Lcom/google/firebase/concurrent/g;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lcom/google/firebase/components/Lazy;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7

    .line 1
    new-instance p0, Lcom/google/firebase/components/Qualified;

    .line 2
    .line 3
    const-class v0, Lcom/google/firebase/annotations/concurrent/Background;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/firebase/components/Qualified;

    .line 11
    .line 12
    const-class v3, Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    invoke-direct {v2, v0, v3}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/google/firebase/components/Qualified;

    .line 18
    .line 19
    const-class v5, Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    invoke-direct {v4, v0, v5}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    filled-new-array {v2, v4}, [Lcom/google/firebase/components/Qualified;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Lcom/google/firebase/components/Component$Builder;

    .line 29
    .line 30
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lf7;

    .line 34
    .line 35
    const/16 v0, 0x13

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lf7;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p0, v2, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Lcom/google/firebase/components/Qualified;

    .line 47
    .line 48
    const-class v2, Lcom/google/firebase/annotations/concurrent/Blocking;

    .line 49
    .line 50
    invoke-direct {v0, v2, v1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Lcom/google/firebase/components/Qualified;

    .line 54
    .line 55
    invoke-direct {v4, v2, v3}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/google/firebase/components/Qualified;

    .line 59
    .line 60
    invoke-direct {v6, v2, v5}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    filled-new-array {v4, v6}, [Lcom/google/firebase/components/Qualified;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v4, Lcom/google/firebase/components/Component$Builder;

    .line 68
    .line 69
    invoke-direct {v4, v0, v2}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lf7;

    .line 73
    .line 74
    const/16 v2, 0x14

    .line 75
    .line 76
    invoke-direct {v0, v2}, Lf7;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object v0, v4, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v2, Lcom/google/firebase/components/Qualified;

    .line 86
    .line 87
    const-class v4, Lcom/google/firebase/annotations/concurrent/Lightweight;

    .line 88
    .line 89
    invoke-direct {v2, v4, v1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/google/firebase/components/Qualified;

    .line 93
    .line 94
    invoke-direct {v1, v4, v3}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/google/firebase/components/Qualified;

    .line 98
    .line 99
    invoke-direct {v3, v4, v5}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    filled-new-array {v1, v3}, [Lcom/google/firebase/components/Qualified;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v3, Lcom/google/firebase/components/Component$Builder;

    .line 107
    .line 108
    invoke-direct {v3, v2, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lf7;

    .line 112
    .line 113
    const/16 v2, 0x15

    .line 114
    .line 115
    invoke-direct {v1, v2}, Lf7;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v3, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Lcom/google/firebase/components/Qualified;

    .line 125
    .line 126
    const-class v3, Lcom/google/firebase/annotations/concurrent/UiThread;

    .line 127
    .line 128
    invoke-direct {v2, v3, v5}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Lcom/google/firebase/components/Component;->a(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v3, Lf7;

    .line 136
    .line 137
    const/16 v4, 0x16

    .line 138
    .line 139
    invoke-direct {v3, v4}, Lf7;-><init>(I)V

    .line 140
    .line 141
    .line 142
    iput-object v3, v2, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    filled-new-array {p0, v0, v1, v2}, [Lcom/google/firebase/components/Component;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0
.end method
