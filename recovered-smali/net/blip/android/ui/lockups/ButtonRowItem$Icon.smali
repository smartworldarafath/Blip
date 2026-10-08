.class public final Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;
.super Lnet/blip/android/ui/lockups/ButtonRowItem;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/android/ui/lockups/ButtonRowItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Icon"
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field private final painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VectorPainter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iget-object p1, p1, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const v1, 0x1f7907

    .line 10
    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object p0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Icon(painter="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, ", description=Back, onClick="

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
