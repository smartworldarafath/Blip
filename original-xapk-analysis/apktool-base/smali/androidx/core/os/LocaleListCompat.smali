.class public final Landroidx/core/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/core/os/LocaleListPlatformWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 3
    .line 4
    new-instance v1, Landroid/os/LocaleList;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/core/os/LocaleListPlatformWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 5
    .line 6
    return-void
.end method

.method public static d(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/os/LocaleListCompat;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/os/LocaleListPlatformWrapper;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Landroid/os/LocaleList;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/core/os/LocaleListCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/core/os/LocaleListCompat;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListPlatformWrapper;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat;->a:Landroidx/core/os/LocaleListPlatformWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->a:Landroid/os/LocaleList;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
