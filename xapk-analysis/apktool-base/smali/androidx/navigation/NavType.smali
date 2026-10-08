.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/navigation/IntNavType;

.field public static final b:Landroidx/navigation/IntArrayNavType;

.field public static final c:Landroidx/navigation/LongNavType;

.field public static final d:Landroidx/navigation/LongArrayNavType;

.field public static final e:Landroidx/navigation/FloatNavType;

.field public static final f:Landroidx/navigation/FloatArrayNavType;

.field public static final g:Landroidx/navigation/BoolNavType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/navigation/NavType;->a:Landroidx/navigation/IntNavType;

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation/IntArrayNavType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v2}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/navigation/NavType;->b:Landroidx/navigation/IntArrayNavType;

    .line 16
    .line 17
    new-instance v0, Landroidx/navigation/LongNavType;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/navigation/NavType;->c:Landroidx/navigation/LongNavType;

    .line 23
    .line 24
    new-instance v0, Landroidx/navigation/LongArrayNavType;

    .line 25
    .line 26
    invoke-direct {v0, v2}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/navigation/NavType;->d:Landroidx/navigation/LongArrayNavType;

    .line 30
    .line 31
    new-instance v0, Landroidx/navigation/FloatNavType;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/navigation/NavType;->e:Landroidx/navigation/FloatNavType;

    .line 37
    .line 38
    new-instance v0, Landroidx/navigation/FloatArrayNavType;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroidx/navigation/NavType;->f:Landroidx/navigation/FloatArrayNavType;

    .line 44
    .line 45
    new-instance v0, Landroidx/navigation/BoolNavType;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/navigation/NavType;->g:Landroidx/navigation/BoolNavType;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/navigation/NavType;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract d(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavType;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
