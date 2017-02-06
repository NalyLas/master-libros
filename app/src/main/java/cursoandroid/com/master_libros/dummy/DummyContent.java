package cursoandroid.com.master_libros.dummy;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cursoandroid.com.master_libros.DevuelveJSON;
import cursoandroid.com.master_libros.ItemListActivity;
import cursoandroid.com.master_libros.Libro;

/**
 * Helper class for providing sample content for user interfaces created by
 * Android template wizards.
 * <p>
 * TODO: Replace all uses of this class before publishing your app.
 */
public class DummyContent {
    /**
     * An array of sample (dummy) items.
     */


    public static final List<DummyItem> ITEMS = new ArrayList<DummyItem>();

    /**
     * A map of sample (dummy) items, by ID.
     */
    public static final Map<String, DummyItem> ITEM_MAP = new HashMap<String, DummyItem>();

    private static final int COUNT = 25;

    static {
    }

    public static void addLibro(){
        ArrayList<Libro> array = ItemListActivity.libros ;
        ITEMS.clear();
        ITEM_MAP.clear();
        for(int i=0; i<array.size(); i++){
            addItem(new DummyItem(i + "", array.get(i).getTitulo(), array.get(i).getAutor(), array.get(i).getFecha(), array.get(i).getPortada(),array.get(i).getSinopsis()));
        }
    }



    private static void addItem(DummyItem item) {
        ITEMS.add(item);
        ITEM_MAP.put(item.id, item);
    }

   /* private static DummyItem createDummyItem(int position) {
        return new DummyItem(String.valueOf(position), "Item " + position, makeDetails(position));
    }*/

    private static String makeDetails(int position) {
        StringBuilder builder = new StringBuilder();
        builder.append("Details about Item: ").append(position);
        for (int i = 0; i < position; i++) {
            builder.append("\nMore details information here.");
        }
        return builder.toString();
    }

    /**
     * A dummy item representing a piece of content.
     */
    public static class DummyItem {
        public final String id;
        public final String titulo;
        public final String autor;
        public final String fecha;
        public final String portada;
        public final String sinopsis;

        public DummyItem(String id, String titulo, String autor, String fecha, String portada, String sinopsis) {
            this.id = id;
            this.titulo = titulo;
            this.autor = autor;
            this.fecha = fecha;
            this.portada = portada;
            this.sinopsis = sinopsis;
        }

        @Override
        public String toString() {
            return titulo;
        }
    }



}
