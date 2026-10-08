.class public abstract Landroidx/compose/ui/graphics/AndroidPaint_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/graphics/Paint;)Landroid/graphics/Paint;
    .locals 3

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 37
    .line 38
    return-object p0
.end method
